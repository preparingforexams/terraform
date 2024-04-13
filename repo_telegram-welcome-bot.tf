module "welcome_repo" {
  source              = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.1.1"
  name                = "telegram-welcome-bot"
  enable_argocd_rules = true
}
