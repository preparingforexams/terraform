module "mood_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v10.1.0"
  name        = "telegram-mood-bot"
  description = "Tracks people's mood."
}
