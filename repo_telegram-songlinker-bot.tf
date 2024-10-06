module "songlinker_repo" {
  source              = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.3.3"
  name                = "telegram-songlinker-bot"
  description         = "Provides links to songs on several music streaming services."
  enable_argocd_rules = true
  required_status_checks = [
    "lint / lint",
    "integration-test",
    "unit-test",
    "build-container-image / build",
  ]
}
