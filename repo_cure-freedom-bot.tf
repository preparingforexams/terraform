module "curefreedom_repo" {
  source              = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.3.2"
  name                = "cure-freedom-bot"
  enable_argocd_rules = false
  protect_default_branch = false
  enable_actions         = false
  blocked_branches = []
  required_status_checks = [  ]
}
