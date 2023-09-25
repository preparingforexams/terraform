module "twittergram_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module"
  name        = "twittergram"
  description = "Forwards toots/mails to telegram chats"
  required_status_checks = [
    "lint",
    "test",
    "build-containter-image",
    "SonarCloud Code Analysis",
  ]
}
