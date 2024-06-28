module "bildbot_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.1.1"
  name                   = "bildbot"
  required_status_checks = ["lint", "build"]
  is_archived            = true
  enable_argocd_rules    = false
}
