# Using "horoscope" as a short internal ID for everything in here

module "horoscope_repo" {
  source              = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v8.0.1"
  name                = "telegram-horoscope-bot"
  description         = "Tells lies about your day"
  enable_argocd_rules = true
}

resource "google_pubsub_topic" "horoscopes" {
  name                       = "horoscopes"
  message_retention_duration = "86400s"
}

resource "google_service_account" "horoscope_bot" {
  account_id   = "horoscope-bot"
  display_name = "Horoscope Bot"
}

resource "google_project_iam_member" "horoscope_publisher" {
  project = google_service_account.horoscope_bot.project
  role    = "roles/pubsub.publisher"
  member  = google_service_account.horoscope_bot.member
}

resource "google_service_account_key" "horoscope" {
  service_account_id = google_service_account.horoscope_bot.account_id
}

resource "doppler_secret" "horoscope_gsa_json" {
  project = "prep"
  config  = "prd"
  name    = "HOROSCOPE_GSA_JSON"
  value   = base64decode(google_service_account_key.horoscope.private_key)
}
