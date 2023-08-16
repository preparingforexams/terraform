module "kwbot_repo" {
  source                 = "./modules/repo"
  name                   = "kwbot"
  required_status_checks = ["lint", "build"]
}
