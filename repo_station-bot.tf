module "station_bot_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v11.1.0"
  name        = "station-bot"
  description = "Keeps track of visited train stations in Schleswig-Holstein"
  required_status_checks = [
    "test / test",
    "post-build-container-image",
  ]
}
