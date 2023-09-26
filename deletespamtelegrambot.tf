module "deletespam_repo" {
  source                = "github.com/BlindfoldedSurgery/terraform-repo-module"
  name                  = "deletespamtelegrambot"
  default_branch_name   = "master"
  blocked_branches      = []
  enable_actions        = false
  is_archived           = true
  create_default_branch = false
}
