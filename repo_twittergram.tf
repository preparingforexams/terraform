module "twittergram_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v11.1.0"
  name        = "twittergram"
  description = "Forwards toots/mails to Telegram chats"
}
