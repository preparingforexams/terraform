module "rate_limiter_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v1.1.0"
  name        = "rate_limiter"
  description = "Provides scaffolding for rate limited features"
  required_status_checks = [
    "codecov/patch",
    "test (3.10)",
    "test (3.11)",
    "test (3.12)",
    "lint (3.10)",
    "lint (3.11)",
    "lint (3.12)",
  ]
}
