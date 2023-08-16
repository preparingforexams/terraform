module "bildbot_repo" {
  source                 = "./modules/repo"
  name                   = "bildbot"
  required_status_checks = ["lint", "build"]
}
