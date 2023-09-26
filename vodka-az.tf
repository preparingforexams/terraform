module "vodka_repo" {
  source                = "github.com/BlindfoldedSurgery/terraform-repo-module"
  name                  = "vodka-az"
  create_default_branch = false
}
