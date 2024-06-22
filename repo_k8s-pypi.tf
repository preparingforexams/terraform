module "pypi_repo" {
  source = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.1.1"
  name   = "k8s-pypi"
  required_status_checks = [
    "validate-renovate-config / validate",
    "build-container-image / build",
  ]
}
