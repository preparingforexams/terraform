module "mood_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.1.1"
  name        = "telegram-mood-bot"
  description = "Tracks people's mood."
}
