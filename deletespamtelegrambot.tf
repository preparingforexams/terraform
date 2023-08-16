module "deletespam_repo" {
  source              = "./modules/repo"
  name                = "deletespamtelegrambot"
  default_branch_name = "master"
  enable_actions      = false
  is_archived         = true
}
