module "kwbot_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module"
  name                   = "kwbot"
  required_status_checks = ["lint", "build"]
}
