module "bildbot_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v4.3.0"
  name                   = "bildbot"
  required_status_checks = ["lint", "build"]
}
