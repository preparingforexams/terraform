module "actions_container_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.1.1"
  name                   = "actions-container"
  description            = "Mirrors the tags of the BlindfoldedSurgery repo with the same name"
  is_public              = false
  required_status_checks = []
}
