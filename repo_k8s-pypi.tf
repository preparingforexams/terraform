module "pypi_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v8.0.3"
  name        = "k8s-pypi"
  description = "Custom PyPi registry"
  required_status_checks = [
    "build-container-image / build",
  ]
}
