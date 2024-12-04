module "coinflip_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.4.0"
  name                   = "coinflipbot"
  required_status_checks = []
  blocked_branches       = []
  protect_default_branch = false
  enable_actions         = false
  is_archived            = true
  is_public              = false
  enable_argocd_rules    = false
}
