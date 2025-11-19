# Using "bob" as a short internal ID for everything in here

module "bob_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v11.1.0"
  name        = "telegram-speech-bot"
  description = "TTS for all your annoyance needs"

  is_archive_prepared = true
  is_archived         = true
  is_public           = false
}
