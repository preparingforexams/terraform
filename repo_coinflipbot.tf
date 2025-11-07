module "coinflip_repo" {
  source = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v10.1.1"
  name   = "coinflipbot"

  is_archive_prepared = true
  is_archived         = true
  is_public           = false
}
