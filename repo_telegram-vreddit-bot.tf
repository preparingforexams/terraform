module "cancer_repo" {
  source              = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.3.0"
  name                = "telegram-vreddit-bot"
  description         = "Posts videos from hard to access social media links directly to Telegram"
  enable_argocd_rules = true
}
