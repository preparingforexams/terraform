module "nh_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v1.1.0"
  name                   = "nhbot"
  required_status_checks = ["lint", "build"]
}
