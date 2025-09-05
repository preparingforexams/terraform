module "twittergram_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.4.0"
  name        = "twittergram"
  description = "Forwards toots/mails to Telegram chats"
}
