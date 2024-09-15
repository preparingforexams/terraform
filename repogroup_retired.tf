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

module "bildbot_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.3.2"
  name                   = "bildbot"
  required_status_checks = []
  blocked_branches       = []
  protect_default_branch = false
  enable_actions         = false
  is_archived            = true
  is_public              = false
  enable_argocd_rules    = false
}

module "kwbot_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.3.2"
  name                   = "kwbot"
  required_status_checks = []
  protect_default_branch = false
  blocked_branches       = []
  enable_actions         = false
  enable_argocd_rules    = false
  is_archived            = true
  is_public              = false
}
