module "festival_api_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.1.1"
  name                   = "festival-api"
  default_branch_name    = "master"
  blocked_branches       = []
  required_status_checks = []
  is_archived            = true
}

module "festival_bot_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.1.1"
  name                   = "festival-bot"
  default_branch_name    = "master"
  blocked_branches       = []
  required_status_checks = ["lint", "build"]
  is_archived            = true
}
