module "welcome_repo" {
  source = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v4.1.3"
  name   = "telegram-welcome-bot"
}
