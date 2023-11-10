module "festival_api_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v5.0.0"
  name                   = "festival-api"
  default_branch_name    = "master"
  blocked_branches       = []
  required_status_checks = []
}

module "festival_bot_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v5.0.0"
  name                   = "festival-bot"
  default_branch_name    = "master"
  blocked_branches       = []
  required_status_checks = ["lint", "build"]
}
