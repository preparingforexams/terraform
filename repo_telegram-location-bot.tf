module "location_bot_repo" {
  source              = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.2.0"
  name                = "telegram-location-bot"
  enable_argocd_rules = true
}
