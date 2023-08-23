module "bildbot_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module"
  name                   = "bildbot"
  required_status_checks = ["lint", "build"]
}
