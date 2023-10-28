module "coinflip_repo" {
  source         = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v4.1.3"
  name           = "coinflipbot"
  is_archived    = true
  enable_actions = false
}
