module "papyrus_api_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v1.0.0"
  name                   = "papyrus-api"
  default_branch_name    = "master"
  blocked_branches       = []
  required_status_checks = ["lint", "build_docker"]
}

module "papyrus_bot_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v1.0.0"
  name                   = "papyrus-bot"
  default_branch_name    = "master"
  blocked_branches       = []
  required_status_checks = ["lint", "build"]
}
