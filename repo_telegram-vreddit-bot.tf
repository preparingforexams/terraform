module "cancer_repo" {
  source = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v4.0.0"
  name   = "telegram-vreddit-bot"
  required_status_checks = [
    "lint",
    "test",
    "build-container-image",
  ]
}

# IAM

resource "google_service_account" "cancer" {
  provider     = google.cancer
  account_id   = "telegram-bot"
  display_name = "Telegram Bot"
}

resource "google_project_iam_custom_role" "cancer_consumer" {
  provider = google.cancer
  title    = "Pub/Sub Consumer"
  role_id  = "pubsubConsumer"
  permissions = [
    "pubsub.subscriptions.consume",
  ]
}

resource "google_project_iam_member" "cancer_consumer" {
  provider = google.cancer
  project  = google_service_account.cancer.project
  role     = google_project_iam_custom_role.cancer_consumer.id
  member   = "serviceAccount:${google_service_account.cancer.email}"
}

resource "google_project_iam_member" "cancer_publisher" {
  provider = google.cancer
  project  = google_service_account.cancer.project
  role     = "roles/pubsub.publisher"
  member   = "serviceAccount:${google_service_account.cancer.email}"
}

# Pub/Sub

module "channels" {
  for_each = toset([
    "download",
    "instaDownload",
    "tiktokDownload",
    "twitterDownload",
    "vimeoDownload",
    "youtubeDownload",
    "youtubeUrlConvert",
  ])

  source    = "./modules/pubsub_channel"
  name      = each.value
  providers = { google = google.cancer }
}

# Service Account key for runtime access

resource "google_service_account_key" "cancer_runtime" {
  provider           = google.cancer
  service_account_id = google_service_account.cancer.account_id
}

resource "github_actions_secret" "cancer_gsa_json" {
  repository      = module.cancer_repo.name
  secret_name     = "GSA_JSON"
  plaintext_value = google_service_account_key.cancer_runtime.private_key
}
