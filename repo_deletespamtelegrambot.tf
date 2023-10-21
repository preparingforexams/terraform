module "deletespam_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v2"
  name                   = "deletespamtelegrambot"
  default_branch_name    = "master"
  blocked_branches       = []
  enable_actions         = false
  is_archived            = true
  create_default_branch  = false
  protect_default_branch = false
  is_public              = false
}
