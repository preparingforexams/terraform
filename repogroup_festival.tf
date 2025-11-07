module "festival_api_repo" {
  source              = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v10.1.1"
  name                = "festival-api"
  default_branch_name = "master"

  is_archive_prepared = true
  is_archived         = true
  is_public           = false
}

module "festival_bot_repo" {
  source              = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v10.1.1"
  name                = "festival-bot"
  default_branch_name = "master"

  is_archive_prepared = true
  is_archived         = true
  is_public           = false
}
