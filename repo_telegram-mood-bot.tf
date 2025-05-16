module "mood_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.3.0"
  name        = "telegram-mood-bot"
  description = "Tracks people's mood."
}
