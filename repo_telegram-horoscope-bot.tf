# Using "horoscope" as a short internal ID for everything in here

module "horoscope_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v10.0.1"
  name        = "telegram-horoscope-bot"
  description = "Tells lies about your future"

  is_archived                  = true
  include_required_meta_checks = false
  enable_argocd_rules          = false
  protect_default_branch       = false
  required_status_checks       = []
}
