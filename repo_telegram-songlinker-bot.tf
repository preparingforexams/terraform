module "songlinker_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v8.0.3"
  name        = "telegram-songlinker-bot"
  description = "Provides links to songs on several music streaming services."

  required_status_checks = [
    "lint / lint",
    "integration-test / test",
    "unit-test / test",
    "build-container-image / build",
  ]
}
