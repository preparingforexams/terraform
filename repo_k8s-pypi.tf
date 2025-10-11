module "pypi_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v10.0.1"
  name        = "k8s-pypi"
  description = "Custom PyPi registry"
  required_status_checks = [
    "post-build-container-image",
  ]
}
