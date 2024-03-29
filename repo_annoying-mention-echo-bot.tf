module "annoying_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v6.0.0"
  name                   = "annoying-mention-echo-bot"
  default_branch_name    = "master"
  blocked_branches       = []
  enable_actions         = false
  is_archived            = true
  is_public              = false
  protect_default_branch = false
}
