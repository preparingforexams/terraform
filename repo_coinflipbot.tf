module "coinflip_repo" {
  source         = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v5.0.0"
  name           = "coinflipbot"
  is_archived    = true
  enable_actions = false
}
