module "misfortune_backend_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v10.1.0"
  name        = "wheel-of-misfortune-backend"
  description = "Wheel of Misfortune backend service"
}

module "misfortune_app_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v10.1.0"
  name        = "wheel-of-misfortune-app"
  description = "Wheel of Misfortune web frontend"

  required_status_checks = [
    "Check Format",
    "Lint",
    "Build Web Package",
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

resource "google_service_account" "misfortune_test" {
  provider     = google.misfortune
  account_id   = "misfortune-test"
  display_name = "Backend Tests"
}

resource "google_project_iam_member" "misfortune_test_datastore_user" {
  provider = google.misfortune
  project  = google_service_account.misfortune.project
  role     = data.google_iam_role.datastore_user.id
  member   = google_service_account.misfortune_test.member
}

# Service Account key for runtime access
module "misfortune_runtime_gsa_secret" {
  providers = {
    google : google.misfortune,
  }

  source                    = "./modules/gsa_secret"
  google_service_account_id = google_service_account.misfortune.account_id
  scaleway_project_id       = "5bdb5dbe-7474-49ba-80d2-0452652a5469"
}

# Service Account key for pipeline
resource "google_service_account_key" "misfortune_test" {
  provider           = google.misfortune
  service_account_id = google_service_account.misfortune_test.account_id
}

resource "github_actions_secret" "misfortune_test_gsa_json" {
  repository      = module.misfortune_backend_repo.name
  secret_name     = "TEST_GSA_JSON_B64"
  plaintext_value = google_service_account_key.misfortune_test.private_key
}
