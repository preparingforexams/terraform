module "renovate_config_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.0.1"
  name                   = "renovate-config"
  description            = "The organization's default Renovate config"
  required_status_checks = []
}
