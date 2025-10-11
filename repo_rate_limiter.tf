module "rate_limiter_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v10.0.1"
  name        = "rate_limiter"
  description = "Provides scaffolding for rate limited features"

  required_status_checks = [
    "post-build-migrations-container-image",
    "check-commits / check",
    "post-lint",
    "post-test",
  ]
}
