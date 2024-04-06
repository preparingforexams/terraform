module "kwbot_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.1.0"
  name                   = "kwbot"
  required_status_checks = ["lint", "build"]
}
