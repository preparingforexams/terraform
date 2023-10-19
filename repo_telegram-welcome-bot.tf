module "welcome_repo" {
  source                = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v1.1.0"
  name                  = "telegram-welcome-bot"
  create_default_branch = false
}
