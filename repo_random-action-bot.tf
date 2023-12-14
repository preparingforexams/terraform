module "randomactionbot_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v5.0.0"
  name                   = "random-action-bot"
  required_status_checks = ["lint", "build-container-image"]
}
