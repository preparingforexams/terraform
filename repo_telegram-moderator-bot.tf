# Using "moderator" as a short internal ID for everything in here

module "moderator_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.1.2"
  name        = "telegram-moderator-bot"
  description = "Jack of all trades, master of none"
}

resource "google_service_account" "moderator_bot" {
  account_id   = "moderator-bot"
  display_name = "Moderator Bot"
}

resource "google_project_iam_member" "moderator_consumer" {
  project = google_service_account.moderator_bot.project
  role    = google_project_iam_custom_role.consumer.id
  member  = google_service_account.moderator_bot.member
}

resource "google_pubsub_subscription" "horoscopes_moderator" {
  name  = "moderator-horoscopes"
  topic = google_pubsub_topic.horoscopes.id

  enable_exactly_once_delivery = true

  expiration_policy {
    ttl = ""
  }

  retry_policy {
    minimum_backoff = "30s"
    maximum_backoff = "600s"
  }
}

resource "google_service_account_key" "moderator" {
  service_account_id = google_service_account.moderator_bot.account_id
}

resource "doppler_secret" "moderator_gsa_json" {
  project = "prep"
  config  = "prd"
  name    = "MODERATOR_GSA_JSON"
  value   = base64decode(google_service_account_key.moderator.private_key)
}
