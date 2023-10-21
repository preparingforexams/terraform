module "kwbot_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v2"
  name                   = "kwbot"
  required_status_checks = ["lint", "build"]
  create_default_branch  = false
}
