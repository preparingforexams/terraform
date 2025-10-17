module "station_bot_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v10.1.1"
  name        = "station-bot"
  description = "Keeps track of visited train stations in Schleswig-Holstein"
  required_status_checks = [
    "test / test",
    "post-build-container-image",
  ]
}
