# Using "moderator" as a short internal ID for everything in here

module "moderator_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.3.0"
  name        = "telegram-moderator-bot"
  description = "Jack of all trades, master of none"
}
