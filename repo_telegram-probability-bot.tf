module "probability_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.3.2"
  name        = "probability-bot"
  description = "Tracks distribution of random slot machine emoji in Telegram"
}
