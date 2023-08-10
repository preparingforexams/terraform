# Using "moderator" as a short internal ID for everything in here

resource "github_repository" "moderator" {
  name        = "telegram-moderator-bot"
  description = "Jack of all trades, master of none"
  visibility  = "public"
  is_template = false

  has_issues      = true
  has_discussions = false
  has_projects    = false
  has_wiki        = false
  has_downloads = false

  allow_auto_merge       = true
  delete_branch_on_merge = true

  allow_merge_commit = false
  allow_squash_merge = true
  allow_rebase_merge = true
}

resource "github_branch_default" "moderator" {
  repository = github_repository.moderator.name
  branch     = "main"
}

resource "github_branch_protection" "moderator" {
  repository_id = github_repository.moderator.id
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

resource "github_actions_repository_permissions" "moderator" {
  allowed_actions = "all"
  repository      = github_repository.moderator.name
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

data "github_repository" "moderator" {
  name = "telegram-moderator-bot"
}

resource "github_actions_secret" "moderator_gsa" {
  repository      = data.github_repository.moderator.name
  secret_name     = "GSA_JSON"
  plaintext_value = google_service_account_key.moderator.private_key
}
