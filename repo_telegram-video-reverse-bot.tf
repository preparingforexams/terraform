module "video_reverse_bot_repo" {
  source              = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v10.1.1"
  name                = "telegram-video-reverse-bot"
  description         = "A Telegram bot that reverses videos you send it."
  enable_argocd_rules = true
}
