module "misfortune_backend_repo" {
  source = "./modules/repo"
  name   = "wheel-of-misfortune-backend"
}

module "misfortune_app_repo" {
  source                 = "./modules/repo"
  name                   = "wheel-of-misfortune-app"
  required_status_checks = [
    "Check Format",
    "Lint",
    "Build Web Package",
    "build-image",
  ]
}
