module "vodka_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v8.0.2"
  name        = "vodka-az"
  description = "Suggests long drink combinations with Vodka"
}
