# Using "horoscope" as a short internal ID for everything in here

module "horoscope_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v10.1.1"
  name        = "telegram-horoscope-bot"
  description = "Tells lies about your future"

  is_public           = false
  is_archived         = true
  is_archive_prepared = true
}
