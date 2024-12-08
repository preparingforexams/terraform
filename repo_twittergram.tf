module "twittergram_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v8.0.1"
  name        = "twittergram"
  description = "Forwards toots/mails to Telegram chats"
  required_status_checks = [
    "validate-renovate-config / validate",
    "lint / lint",
    "test / test",
    "build-container-image / build",
    "SonarCloud Code Analysis",
  ]
}
