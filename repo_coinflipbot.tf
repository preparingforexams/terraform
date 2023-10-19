module "coinflip_repo" {
  source                = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v1.1.0"
  name                  = "coinflipbot"
  is_archived           = true
  enable_actions        = false
  create_default_branch = false
}
