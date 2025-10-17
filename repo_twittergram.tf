module "twittergram_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v10.1.1"
  name        = "twittergram"
  description = "Forwards toots/mails to Telegram chats"
}
