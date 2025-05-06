resource "google_service_account_key" "this" {
  service_account_id = var.google_service_account_id
}

data "scaleway_secret" "this" {
  project_id = var.scaleway_project_id
  name       = "gsa-json"
}

resource "scaleway_secret_version" "this" {
  secret_id = data.scaleway_secret.this.secret_id
  data      = base64decode(google_service_account_key.this.private_key)
}
