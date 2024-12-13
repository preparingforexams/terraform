module "station_bot_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v8.0.2"
  name        = "station-bot"
  description = "Keeps track of visited train stations in Schleswig-Holstein"
  required_status_checks = [
    "test / test",
    "build-container-image / build",
  ]
}
