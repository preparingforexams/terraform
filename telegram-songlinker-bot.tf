module "songlinker_repo" {
  source = "./modules/repo"
  name   = "telegram-songlinker-bot"
  required_status_checks = [
    "lint",
    "unit-test",
    "build-container-image",
  ]
}
