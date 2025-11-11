terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 7.11.0"
    }
  }
}

resource "google_pubsub_topic" "topic" {
  name                       = var.name
  message_retention_duration = "86400s"
}

resource "google_pubsub_topic" "dead_letter" {
  name                       = "${var.name}_dead_letter"
  message_retention_duration = "86400s"
}

resource "google_pubsub_subscription" "subscription" {
  name  = var.name
  topic = google_pubsub_topic.topic.id

  ack_deadline_seconds         = var.ack_deadline_seconds
  enable_exactly_once_delivery = true

  expiration_policy {
    ttl = ""
  }

  retry_policy {
    minimum_backoff = "${var.minimum_backoff_seconds}s"
    maximum_backoff = "${var.maximum_backoff_seconds}s"
  }

  dead_letter_policy {
    dead_letter_topic     = google_pubsub_topic.dead_letter.id
    max_delivery_attempts = var.max_delivery_attempts
  }
}

resource "google_pubsub_subscription" "dead_letter" {
  name  = "${var.name}_dead_letter"
  topic = google_pubsub_topic.dead_letter.id

  expiration_policy {
    ttl = ""
  }

  retry_policy {
    minimum_backoff = "30s"
    maximum_backoff = "600s"
  }
}
