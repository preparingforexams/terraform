module "vodka_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v10.1.1"
  name        = "vodka-az"
  description = "Suggests long drink combinations with Vodka"

  is_public           = false
  is_archived         = false
  is_archive_prepared = true
}
