module "deletespam_repo" {
  source              = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v10.1.1"
  name                = "deletespamtelegrambot"
  default_branch_name = "master"

  is_archive_prepared = true
  is_archived         = true
  is_public           = false
}
