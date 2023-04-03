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

data "github_repository" "bob" {
  name = "telegram-speech-bot"
}

resource "github_actions_secret" "bob_gsa" {
  repository      = data.github_repository.bob.name
  secret_name     = "SERVICE_ACCOUNT_JSON_B64"
  plaintext_value = google_service_account_key.bob.private_key
}

