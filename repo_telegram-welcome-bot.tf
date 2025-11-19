module "welcome_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v11.1.0"
  name        = "telegram-welcome-bot"
  description = "Welcomes users to a group chat"

  is_archived         = true
  is_archive_prepared = true
  is_public           = false
}
