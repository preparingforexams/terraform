module "self_repo" {
  source = "./modules/repo"
  name   = "terraform"
  required_status_checks = [
    "fmt",
    "validate",
    "plan"
  ]
}

resource "google_service_account" "self" {
  account_id   = "github-actions-ci"
  display_name = "GitHub Actions"
}

resource "google_project_iam_member" "self_roles" {
  for_each = toset([
    "roles/iam.securityReviewer",
    "roles/iam.serviceAccountViewer",
    "roles/pubsub.admin",
    "roles/storage.objectAdmin",
  ])
  project = google_service_account.self.project
  role    = each.key
  member  = google_service_account.self.member
}

resource "google_project_iam_member" "self_roles_for_cancer_project" {
  for_each = toset([
    "roles/iam.securityReviewer",
    "roles/iam.serviceAccountViewer",
    "roles/pubsub.admin",
    "roles/storage.objectAdmin",
  ])
  project = google_service_account.cancer.project
  role    = each.key
  member  = google_service_account.self.member
}

resource "google_service_account_key" "self" {
  service_account_id = google_service_account.self.account_id
}

resource "github_actions_secret" "self_gsa" {
  repository      = module.self_repo.name
  secret_name     = "GOOGLE_SA_JSON"
  plaintext_value = base64decode(google_service_account_key.self.private_key)
}