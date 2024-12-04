module "songlinker_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.3.3"
  name        = "telegram-songlinker-bot"
  description = "Provides links to songs on several music streaming services."

  required_status_checks = [
    "validate-renovate-config / validate",
    "lint / lint",
    "integration-test / test",
    "unit-test / test",
    "build-container-image / build",
  ]
}
