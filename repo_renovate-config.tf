module "renovate_config_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.0.0"
  name                   = "renovate-config"
  required_status_checks = []
}
