module "actions_container_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.1.3"
  name                   = "actions-container"
  description            = "Mirrors the tags of the BlindfoldedSurgery repo with the same name"
  is_public              = true
  enable_argocd_rules    = false
  required_status_checks = []
}
