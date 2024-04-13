module "nh_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.1.1"
  name                   = "nhbot"
  required_status_checks = ["lint", "build"]
}
