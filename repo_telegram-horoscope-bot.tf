# Using "horoscope" as a short internal ID for everything in here

module "horoscope_repo" {
  source              = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.2.0"
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

module "horoscope_gsa_secret" {
  source                    = "./modules/gsa_secret"
  google_service_account_id = google_service_account.horoscope_bot.account_id
  scaleway_project_id       = "646f54a3-1828-44db-abc3-128d225a6b12"
}
