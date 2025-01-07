module "mood_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.0.0"
  name        = "telegram-mood-bot"
  description = "Tracks people's mood."

  required_status_checks = [
    "lint / lint",
    "test / test",
    "build-container-image (., app) / build",
    "build-container-image (migrations, migrations) / build",
  ]
}
