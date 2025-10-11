module "update_receiver_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v10.1.0"
  name        = "telegram-update-receiver"
  description = ""

  enable_argocd_rules = true
}
