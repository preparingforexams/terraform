module "welcome_repo" {
  source              = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v10.1.0"
  name                = "telegram-welcome-bot"
  description         = "Welcomes users to a group chat"
  enable_argocd_rules = true
}
