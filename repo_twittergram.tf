module "twittergram_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.1.1"
  name        = "twittergram"
  description = "Forwards toots/mails to Telegram chats"
  required_status_checks = [
    "lint / lint",
    "test / test",
    "post-build-container-image",
    "SonarCloud Code Analysis",
  ]
}
