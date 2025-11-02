module "hhh_diff_bot_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v10.1.1"
  name        = "hhh-diff-bot"
  description = "Keeps a list of all Telegram group chats it's invited to"

  is_archive_prepared = true
  is_public           = false
}
