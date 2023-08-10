module "cancer_repo" {
  source = "./modules/repo"
  name   = "telegram-vreddit-bot"
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
    "youtubeDownload",
    "youtubeUrlConvert",
  ])

  source    = "./modules/pubsub_channel"
  name      = each.value
  providers = { google = google.cancer }
}
