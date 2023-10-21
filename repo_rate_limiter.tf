module "rate_limiter_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v4.0.1"
  name        = "rate_limiter"
  description = "Provides scaffolding for rate limited features"
  required_status_checks = [
    "codecov/patch",
    "test (3.10) / test",
    "test (3.11) / test",
    "test (3.12) / test",
    "lint (3.10) / lint",
    "lint (3.11) / lint",
    "lint (3.12) / lint",
  ]
}
