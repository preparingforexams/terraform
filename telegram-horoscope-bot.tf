# Using "horoscope" as a short internal ID for everything in here

module "horoscope_repo" {
  source = "./modules/repo"
  name = "telegram-horoscope-bot"
  description = "Tells lies about your day"
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

resource "github_actions_secret" "horoscope_gsa" {
  repository      = module.horoscope_repo.name
  secret_name     = "GSA_JSON"
  plaintext_value = google_service_account_key.horoscope.private_key
}
