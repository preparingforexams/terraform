module "nh_repo" {
  source                 = "./modules/repo"
  name                   = "nhbot"
  required_status_checks = ["lint", "build"]
}
