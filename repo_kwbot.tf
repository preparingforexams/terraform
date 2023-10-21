module "kwbot_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v3.0.0"
  name                   = "kwbot"
  required_status_checks = ["lint", "build"]
}
