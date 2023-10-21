module "songlinker_repo" {
  source = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v1.1.0"
  name   = "telegram-songlinker-bot"
  required_status_checks = [
    "lint",
    "unit-test",
    "build-container-image",
  ]
}
