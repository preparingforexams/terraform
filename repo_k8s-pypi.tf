module "pypi_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.2.0"
  name        = "k8s-pypi"
  description = "Custom PyPi registry"
  required_status_checks = [
    "post-build-container-image",
  ]
}
