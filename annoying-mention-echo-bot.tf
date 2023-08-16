module "annoying_repo" {
  source              = "./modules/repo"
  name                = "annoying-mention-echo-bot"
  default_branch_name = "master"
  enable_actions      = false
  is_archived         = true
}
