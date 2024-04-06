module "station_bot_repo" {
  source = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.1.0"
  name   = "station-bot"
  required_status_checks = [
    "test / test",
    "build-container-image / build",
    "validate-renovate-config / validate",
  ]
  enable_argocd_rules = true
}
