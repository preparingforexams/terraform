module "misfortune_backend_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v11.1.0"
  name        = "wheel-of-misfortune-backend"
  description = "Wheel of Misfortune backend service"
}

module "misfortune_app_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v11.1.0"
  name        = "wheel-of-misfortune-app"
  description = "Wheel of Misfortune web frontend"

  required_status_checks = [
    "Check Format",
    "Lint",
    "Build Web Package",
  ]
}
