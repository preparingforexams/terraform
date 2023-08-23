module "annoying_repo" {
  source              = "github.com/BlindfoldedSurgery/terraform-repo-module"
  name                = "annoying-mention-echo-bot"
  default_branch_name = "master"
  blocked_branches    = []
  enable_actions      = false
  is_archived         = true
}
