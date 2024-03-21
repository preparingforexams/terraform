module "curefreedom_repo" {
  source = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v6.0.0"
  name   = "cure-freedom-bot"
  required_status_checks = [
    "helm-lint",
    "validate-renovate-config / validate",
    "build-container-image",
  ]
}
