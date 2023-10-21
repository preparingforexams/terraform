module "twittergram_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v1.1.0"
  name        = "twittergram"
  description = "Forwards toots/mails to telegram chats"
  required_status_checks = [
    "lint / lint",
    "test / test",
    "build-container-image / build",
    "SonarCloud Code Analysis",
  ]
}
