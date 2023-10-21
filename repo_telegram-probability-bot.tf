module "probability_repo" {
  source                = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v2"
  name                  = "probability-bot"
  create_default_branch = false
}
