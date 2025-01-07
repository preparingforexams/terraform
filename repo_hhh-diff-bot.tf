module "hhh_diff_bot_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.0.1"
  name        = "hhh-diff-bot"
  description = "Keeps a list of all Telegram group chats it's invited to"
}
