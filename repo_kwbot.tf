module "kwbot_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v5.0.0"
  name                   = "kwbot"
  required_status_checks = ["lint", "build"]
}
