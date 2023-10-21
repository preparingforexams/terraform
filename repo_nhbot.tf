module "nh_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v3.0.0"
  name                   = "nhbot"
  required_status_checks = ["lint", "build"]
}
