module "welcome_repo" {
  source                = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v2"
  name                  = "telegram-welcome-bot"
  create_default_branch = false
}
