module "welcome_repo" {
  source = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v3.0.0"
  name   = "telegram-welcome-bot"
}
