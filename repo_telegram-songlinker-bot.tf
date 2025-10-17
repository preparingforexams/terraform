module "songlinker_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v10.1.1"
  name        = "telegram-songlinker-bot"
  description = "Provides links to songs on several music streaming services."

  required_status_checks = [
    "lint / lint",
    "integration-test / test",
    "unit-test / test",
    "post-build-container-image",
  ]
}
