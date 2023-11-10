module "bildbot_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v5.0.0"
  name                   = "bildbot"
  required_status_checks = ["lint", "build"]
}
