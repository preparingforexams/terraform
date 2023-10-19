module "bildbot_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v1.0.0"
  name                   = "bildbot"
  required_status_checks = ["lint", "build"]
  create_default_branch  = false
}
