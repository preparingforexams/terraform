module "welcome_repo" {
  source = "github.com/BlindfoldedSurgery/terraform-repo-module"
  name   = "telegram-welcome-bot"
  create_default_branch = false
}
