module "welcome_repo" {
  source                = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v1.0.0"
  name                  = "telegram-welcome-bot"
  create_default_branch = false
}
