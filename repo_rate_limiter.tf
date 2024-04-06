module "rate_limiter_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.1.0"
  name        = "rate_limiter"
  description = "Provides scaffolding for rate limited features"
  required_status_checks = [
    "codecov/patch",
    "check-commits / check",
    "lint (3.11) / lint",
    "lint (3.12) / lint",
    "test (3.11) / test",
    "test (3.12) / test",
    "test-migrations-postgres (14)",
    "test-migrations-postgres (15)",
    "test-migrations-postgres (16)",
    "test-migrations-sqlite",
    "validate-renovate-config / validate",
  ]
}
