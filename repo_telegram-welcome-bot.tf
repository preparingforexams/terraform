module "welcome_repo" {
  source              = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.1.3"
  name                = "telegram-welcome-bot"
  description         = "Welcomes users to a group chat"
  enable_argocd_rules = true
}
