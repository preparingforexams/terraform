module "songlinker_repo" {
  source              = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.1.1"
  name                = "telegram-songlinker-bot"
  enable_argocd_rules = true
  required_status_checks = [
    "lint / lint",
    "integration-test",
    "unit-test",
    "build-container-image / build",
  ]
}
