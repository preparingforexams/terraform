module "songlinker_repo" {
  source = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v3.0.0"
  name   = "telegram-songlinker-bot"
  required_status_checks = [
    "lint",
    "unit-test",
    "build-container-image",
  ]
}
