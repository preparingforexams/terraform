# Using "bob" as a short internal ID for everything in here

module "bob_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v4.1.3"
  name        = "telegram-speech-bot"
  description = "TTS for all your annoyance needs"
}

resource "google_service_account" "bob_bot" {
  account_id   = "bob-bot"
  display_name = "Bob Bot"
}

resource "google_project_iam_member" "bob_publisher" {
  for_each = toset([
    "roles/cloudtranslate.user",
    "roles/datastore.user",
  ])

  project = google_service_account.bob_bot.project
  role    = each.key
  member  = google_service_account.bob_bot.member
}

resource "google_service_account_key" "bob" {
  service_account_id = google_service_account.bob_bot.account_id
}

resource "github_actions_secret" "bob_gsa" {
  repository      = module.bob_repo.name
  secret_name     = "SERVICE_ACCOUNT_JSON_B64"
  plaintext_value = google_service_account_key.bob.private_key
}
