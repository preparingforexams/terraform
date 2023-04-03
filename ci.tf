resource "google_service_account" "github_actions_access" {
  account_id   = "github-actions-ci"
  display_name = "GitHub Actions"
}

resource "google_project_iam_member" "github_actions_gcs" {
  project = google_service_account.github_actions_access.project
  role    = "roles/storage.objectAdmin"
  member  = google_service_account.github_actions_access.member
  condition {
    expression = "resource.name == 'prep-terraform-state'"
    title      = "Restrict to TF state"
  }
}

resource "google_service_account_key" "github_actions" {
  service_account_id = google_service_account.github_actions_access.account_id
}

data "github_repository" "terraform_repo" {
  name = "terraform"
}

resource "github_actions_secret" "terraform" {
  repository      = data.github_repository.terraform_repo.name
  secret_name     = "GOOGLE_SA_JSON"
  plaintext_value = base64decode(google_service_account_key.github_actions.private_key)
}
