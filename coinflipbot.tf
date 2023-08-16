module "coinflip_repo" {
  source         = "./modules/repo"
  name           = "coinflipbot"
  is_archived    = true
  enable_actions = false
}
