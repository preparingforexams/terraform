module "twittergram_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module"
  name        = "twittergram"
  description = "Forwards toots/mails to telegram chats"
}
