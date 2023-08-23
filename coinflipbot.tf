module "coinflip_repo" {
  source         = "github.com/BlindfoldedSurgery/terraform-repo-module"
  name           = "coinflipbot"
  is_archived    = true
  enable_actions = false
}
