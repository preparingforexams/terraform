module "vodka_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v11.1.0"
  name        = "vodka-az"
  description = "Suggests long drink combinations with Vodka"

  is_public           = false
  is_archived         = true
  is_archive_prepared = true
}
