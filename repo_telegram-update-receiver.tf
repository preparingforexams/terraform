module "update_receiver_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.3.0"
  name        = "telegram-update-receiver"
  description = ""

  enable_argocd_rules = true
}
