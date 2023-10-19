module "probability_repo" {
  source                = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v1.1.0"
  name                  = "probability-bot"
  create_default_branch = false
}
