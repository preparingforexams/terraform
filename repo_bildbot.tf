module "bildbot_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.0.0"
  name                   = "bildbot"
  required_status_checks = ["lint", "build"]
  is_archived            = true
}
