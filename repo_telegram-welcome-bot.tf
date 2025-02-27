module "welcome_repo" {
  source              = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.2.0"
  name                = "telegram-welcome-bot"
  description         = "Welcomes users to a group chat"
  enable_argocd_rules = true
}
