module "deletespam_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.2.0"
  name                   = "deletespamtelegrambot"
  default_branch_name    = "master"
  blocked_branches       = []
  enable_actions         = false
  is_archived            = true
  protect_default_branch = false
  is_public              = false
  enable_argocd_rules    = false
}
