# Using "horoscope" as a short internal ID for everything in here

resource "github_repository" "horoscope" {
  name        = "telegram-horoscope-bot"
  description = "Tells lies about your day"
  visibility  = "public"
  is_template = false

  has_issues      = true
  has_discussions = false
  has_projects    = false
  has_wiki        = false
  has_downloads   = false

  allow_auto_merge       = true
  delete_branch_on_merge = true

  allow_merge_commit = false
  allow_squash_merge = true
  allow_rebase_merge = true
}

resource "github_branch_default" "horoscope" {
  repository = github_repository.horoscope.name
  branch     = "main"
}

resource "github_branch_protection" "horoscope" {
  repository_id = github_repository.horoscope.id
  pattern       = "main"

  required_linear_history = true

  required_status_checks {
    contexts = [
      "lint",
      "test",
      "build-container-image",
    ]
  }
}

resource "github_actions_repository_permissions" "horoscope" {
  allowed_actions = "all"
  repository      = github_repository.horoscope.name
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
  repository      = github_repository.horoscope.name
  secret_name     = "GSA_JSON"
  plaintext_value = google_service_account_key.horoscope.private_key
}

