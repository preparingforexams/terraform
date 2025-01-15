module "location_bot_repo" {
  source              = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.1.1"
  name                = "telegram-location-bot"
  description         = "Allows users to set their own admin title"
  enable_argocd_rules = true
}
