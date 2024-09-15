module "nh_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.3.2"
  name                   = "nhbot"
  description            = "nh"
  required_status_checks = []
  protect_default_branch = false
  blocked_branches       = []
  enable_actions         = false
  enable_argocd_rules    = false
  is_archived            = true
  is_public              = false
}
