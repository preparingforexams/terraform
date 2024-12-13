module "rate_limiter_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v8.0.3"
  name        = "rate_limiter"
  description = "Provides scaffolding for rate limited features"

  required_status_checks = [
    "build-migrations-container-image (postgres, amd64) / build",
    "build-migrations-container-image (postgres, arm64) / build",
    "build-migrations-container-image (sqlite, amd64) / build",
    "build-migrations-container-image (sqlite, arm64) / build",
    "codecov/patch",
    "check-commits / check",
    "lint (3.11) / lint",
    "lint (3.12) / lint",
    "lint (3.13) / lint",
    "test (3.11) / test",
    "test (3.12) / test",
    "test (3.13) / test",
    "test-migrations-postgres (14)",
    "test-migrations-postgres (15)",
    "test-migrations-postgres (16)",
    "test-migrations-sqlite",
  ]
}
