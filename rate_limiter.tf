module "rate_limiter_repo" {
  source = "github.com/BlindfoldedSurgery/terraform-repo-module"
  name   = "rate_limiter"
  required_status_checks = [
    "test (3.9)",
    "test (3.10)",
    "test (3.11)",
    "lint (3.9)",
    "lint (3.10)",
    "lint (3.11)",
  ]
}
