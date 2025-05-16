# Using "bob" as a short internal ID for everything in here

module "bob_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.3.0"
  name        = "telegram-speech-bot"
  description = "TTS for all your annoyance needs"
}

resource "google_service_account" "bob_bot" {
  account_id   = "bob-bot"
  display_name = "Bob Bot"
}

resource "google_project_iam_member" "bob_policies" {
  for_each = toset([
    "roles/cloudtranslate.user",
    "roles/datastore.user",
  ])

  project = google_service_account.bob_bot.project
  role    = each.key
  member  = google_service_account.bob_bot.member
}

module "bob_gsa_secret" {
  source                    = "./modules/gsa_secret"
  google_service_account_id = google_service_account.bob_bot.account_id
  scaleway_project_id       = "51c6a6f0-ffaa-49b2-8285-745772763e07"
}
