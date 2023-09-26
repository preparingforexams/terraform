module "probability_repo" {
  source = "github.com/BlindfoldedSurgery/terraform-repo-module"
  name   = "probability-bot"
  create_default_branch = false
}
