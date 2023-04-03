resource "google_project_service" "services" {
  for_each = toset([
    "datastore.googleapis.com",
    "firestore.googleapis.com",
    "iam.googleapis.com",
    "logging.googleapis.com",
    "monitoring.googleapis.com",
    "pubsub.googleapis.com",
    "storage-api.googleapis.com",
    "storage-component.googleapis.com",
    "storage.googleapis.com",
    "texttospeech.googleapis.com",
    "translate.googleapis.com",
    "vision.googleapis.com"
  ])
  service = each.key
}
