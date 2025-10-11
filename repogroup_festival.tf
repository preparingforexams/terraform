module "festival_api_repo" {
  source                       = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v10.1.0"
  name                         = "festival-api"
  default_branch_name          = "master"
  blocked_branches             = []
  required_status_checks       = []
  protect_default_branch       = false
  enable_actions               = false
  is_archived                  = true
  include_required_meta_checks = false
  is_public                    = false
  enable_argocd_rules          = false
}

module "festival_bot_repo" {
  source                       = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v10.1.0"
  name                         = "festival-bot"
  default_branch_name          = "master"
  blocked_branches             = []
  required_status_checks       = []
  protect_default_branch       = false
  enable_actions               = false
  is_archived                  = true
  include_required_meta_checks = false
  is_public                    = false
  enable_argocd_rules          = false
}
