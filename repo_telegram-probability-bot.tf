module "probability_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.4.0"
  name        = "probability-bot"
  description = "Tracks distribution of random slot machine emoji in Telegram"
  is_archived = true
}
