module "rate_limiter_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v11.1.0"
  name        = "rate_limiter"
  description = "Provides scaffolding for rate limited features"

  allow_default_branch_protection_bypass = false

  required_status_checks = [
    "post-build-migrations-container-image",
    "check-commits / check",
    "post-lint",
    "post-test",
  ]
}
