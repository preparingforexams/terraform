module "nh_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module"
  name                   = "nhbot"
  required_status_checks = ["lint", "build"]
  create_default_branch = false
}
