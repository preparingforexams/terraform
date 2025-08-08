module "vodka_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.3.0"
  name        = "vodka-az"
  description = "Suggests long drink combinations with Vodka"

  is_archived                  = false
  include_required_meta_checks = false
  enable_argocd_rules          = false
  protect_default_branch       = false
  required_status_checks       = []
}
