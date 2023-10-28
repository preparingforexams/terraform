module "welcome_repo" {
  source = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v4.3.0"
  name   = "telegram-welcome-bot"
}
