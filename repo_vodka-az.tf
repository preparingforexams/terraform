module "vodka_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.2.0"
  name        = "vodka-az"
  description = "Suggests long drink combinations with Vodka"
}
