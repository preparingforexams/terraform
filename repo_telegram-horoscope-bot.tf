# Using "horoscope" as a short internal ID for everything in here

module "horoscope_repo" {
  source              = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.2.0"
  name                = "telegram-horoscope-bot"
  description         = "Tells lies about your day"
  enable_argocd_rules = true
}

resource "google_pubsub_topic" "horoscopes" {
  name                       = "horoscopes"
  message_retention_duration = "86400s"
}
