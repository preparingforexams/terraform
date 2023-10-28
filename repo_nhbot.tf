module "nh_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v4.1.3"
  name                   = "nhbot"
  required_status_checks = ["lint", "build"]
}
