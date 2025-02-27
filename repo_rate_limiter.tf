module "rate_limiter_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.2.0"
  name        = "rate_limiter"
  description = "Provides scaffolding for rate limited features"

  required_status_checks = [
    "post-build-migrations-container-image",
    "codecov/patch",
    "check-commits / check",
    "post-lint",
    "post-test",
  ]
}
