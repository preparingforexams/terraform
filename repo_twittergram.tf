module "twittergram_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v4.1.3"
  name        = "twittergram"
  description = "Forwards toots/mails to Telegram chats"
  required_status_checks = [
    "lint / lint",
    "test / test",
    "build-container-image / build",
    "SonarCloud Code Analysis",
  ]
}
