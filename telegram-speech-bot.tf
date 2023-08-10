# Using "bob" as a short internal ID for everything in here

resource "github_repository" "bob" {
  name        = "telegram-speech-bot"
  description = "TTS for all your annoyance needs"
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

resource "github_branch_default" "bob" {
  repository = github_repository.bob.name
  branch     = "main"
}

resource "github_branch_protection" "bob" {
  repository_id = github_repository.bob.id
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

resource "github_actions_repository_permissions" "bob" {
  allowed_actions = "all"
  repository      = github_repository.bob.name
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
  repository      = github_repository.bob.name
  secret_name     = "SERVICE_ACCOUNT_JSON_B64"
  plaintext_value = google_service_account_key.bob.private_key
}
