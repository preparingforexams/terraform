module "probability_repo" {
  source                       = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.1.3"
  name                         = "probability-bot"
  description                  = "Tracks distribution of random slot machine emoji in Telegram"
  is_archived                  = true
  include_required_meta_checks = false
  enable_argocd_rules          = false
  protect_default_branch       = false
  required_status_checks       = []
}
