module "nh_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v10.1.0"
  name        = "nhbot"
  description = "nh"

  is_archive_prepared = true
  is_archived         = true
  is_public           = false
}

module "bildbot_repo" {
  source = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v10.1.0"
  name   = "bildbot"

  is_archive_prepared = true
  is_archived         = true
  is_public           = false
}

module "kwbot_repo" {
  source = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v10.1.0"
  name   = "kwbot"

  is_archive_prepared = true
  is_archived         = true
  is_public           = false
}

module "curefreedom_repo" {
  source = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v10.1.0"
  name   = "cure-freedom-bot"

  is_archive_prepared = true
  is_archived         = true
}
