module "coinflip_repo" {
  source = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v11.1.0"
  name   = "coinflipbot"

  is_archive_prepared = true
  is_archived         = true
  is_public           = false
}
