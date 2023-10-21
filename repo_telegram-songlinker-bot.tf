module "songlinker_repo" {
  source = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v2"
  name   = "telegram-songlinker-bot"
  required_status_checks = [
    "lint",
    "unit-test",
    "build-container-image",
  ]
  create_default_branch = false
}
