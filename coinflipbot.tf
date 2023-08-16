module "coinflip_repo" {
  source          = "./modules/repo"
  name            = "coinflipbot"
  is_archived     = true
  allowed_actions = "local_only"
}
