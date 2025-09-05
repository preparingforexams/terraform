module "papyrus_api_repo" {
  source                       = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.4.0"
  name                         = "papyrus-api"
  default_branch_name          = "master"
  blocked_branches             = []
  required_status_checks       = ["lint", "build_docker"]
  is_archived                  = true
  include_required_meta_checks = false
  enable_argocd_rules          = false
}

module "papyrus_bot_repo" {
  source                       = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.4.0"
  name                         = "papyrus-bot"
  default_branch_name          = "master"
  blocked_branches             = []
  required_status_checks       = ["lint", "build"]
  is_archived                  = true
  include_required_meta_checks = false
  enable_argocd_rules          = false
}
