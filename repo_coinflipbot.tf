module "coinflip_repo" {
  source                       = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.1.1"
  name                         = "coinflipbot"
  required_status_checks       = []
  blocked_branches             = []
  protect_default_branch       = false
  enable_actions               = false
  is_archived                  = true
  is_public                    = false
  include_required_meta_checks = false
  enable_argocd_rules          = false
}
