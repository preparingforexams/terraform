module "nh_repo" {
  source                       = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.4.0"
  name                         = "nhbot"
  description                  = "nh"
  required_status_checks       = []
  protect_default_branch       = false
  blocked_branches             = []
  enable_actions               = false
  enable_argocd_rules          = false
  include_required_meta_checks = false
  is_archived                  = true
  is_public                    = false
}

module "bildbot_repo" {
  source                       = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.4.0"
  name                         = "bildbot"
  required_status_checks       = []
  blocked_branches             = []
  protect_default_branch       = false
  enable_actions               = false
  include_required_meta_checks = false
  is_archived                  = true
  is_public                    = false
  enable_argocd_rules          = false
}

module "kwbot_repo" {
  source                       = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.4.0"
  name                         = "kwbot"
  required_status_checks       = []
  protect_default_branch       = false
  blocked_branches             = []
  enable_actions               = false
  include_required_meta_checks = false
  enable_argocd_rules          = false
  is_archived                  = true
  is_public                    = false
}

module "curefreedom_repo" {
  source = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.4.0"
  name   = "cure-freedom-bot"

  enable_argocd_rules          = false
  include_required_meta_checks = false
  protect_default_branch       = false
  enable_actions               = false
  is_archived                  = true

  blocked_branches       = []
  required_status_checks = []
}
