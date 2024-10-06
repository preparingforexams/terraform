module "pypi_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.3.3"
  name        = "k8s-pypi"
  description = "Custom PyPi registry"
  required_status_checks = [
    "validate-renovate-config / validate",
    "build-container-image / build",
  ]
}
