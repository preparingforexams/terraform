resource "google_project_iam_custom_role" "consumer" {
  title   = "Pub/Sub Consumer"
  role_id = "pubsubConsumer"
  permissions = [
    "pubsub.subscriptions.consume",
  ]
}
