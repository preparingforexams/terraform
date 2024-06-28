module "coinflip_repo" {
  source              = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.2.0"
  name                = "coinflipbot"
  is_archived         = true
  enable_actions      = false
  enable_argocd_rules = false
}
