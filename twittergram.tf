module "twittergram_repo" {
  source = "./modules/repo"
  name   = "twittergram"
  description = "Forwards toots/mails to telegram chats"
}
