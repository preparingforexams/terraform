module "misfortune_backend_repo" {
  source = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.2.0"
  name   = "wheel-of-misfortune-backend"
}

module "misfortune_app_repo" {
  source = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.2.0"
  name   = "wheel-of-misfortune-app"
  required_status_checks = [
    "Check Format",
    "Lint",
    "Build Web Package",
    "build-image",
    "validate-renovate-config / validate",
  ]
}

# IAM

resource "google_service_account" "misfortune" {
  provider     = google.misfortune
  account_id   = "misfortune"
  display_name = "Backend"
}

data "google_iam_role" "datastore_user" {
  provider = google.misfortune
  name     = "roles/datastore.user"
}

resource "google_project_iam_member" "misfortune_datastore_user" {
  provider = google.misfortune
  project  = google_service_account.misfortune.project
  role     = data.google_iam_role.datastore_user.id
  member   = google_service_account.misfortune.member
}

# Service Account key for runtime access

resource "google_service_account_key" "misfortune_runtime" {
  provider           = google.misfortune
  service_account_id = google_service_account.misfortune.account_id
}

resource "github_actions_secret" "misfortune_gsa_json" {
  repository      = module.misfortune_backend_repo.name
  secret_name     = "GCP_SERVICE_ACCOUNT_JSON"
  plaintext_value = google_service_account_key.misfortune_runtime.private_key
}
