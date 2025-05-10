module "cancer_repo" {
  source              = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.2.0"
  name                = "telegram-vreddit-bot"
  description         = "Posts videos from hard to access social media links directly to Telegram"
  enable_argocd_rules = true
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

  source                  = "./modules/pubsub_channel"
  name                    = each.value
  providers               = { google = google.cancer }
  max_delivery_attempts   = 10
  minimum_backoff_seconds = 60
  maximum_backoff_seconds = 600
}

# Service Account key for runtime access

resource "google_service_account_key" "cancer_runtime" {
  provider           = google.cancer
  service_account_id = google_service_account.cancer.account_id
}

resource "doppler_secret" "cancer_gsa_json" {
  project = "prep"
  config  = "prd"
  name    = "CANCER_BASE_GSA_JSON"
  value   = base64decode(google_service_account_key.cancer_runtime.private_key)
}

module "cancer_gsa_secret" {
  providers = {
    google : google.cancer,
  }

  source                    = "./modules/gsa_secret"
  google_service_account_id = google_service_account.cancer.account_id
  scaleway_project_id       = "61ba8f13-4ab9-4198-ab22-9803445b6508"
}
