module "renovate_config_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.3.3"
  name                   = "renovate-config"
  description            = "The organization's default Renovate config"
  required_status_checks = []
}
