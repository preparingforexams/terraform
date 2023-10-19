module "vodka_repo" {
  source                = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v1.0.0"
  name                  = "vodka-az"
  create_default_branch = false
}
