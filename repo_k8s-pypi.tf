module "pypi_repo" {
  source = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v3.0.0"
  name   = "k8s-pypi"
  required_status_checks = [
    "build-container-image",
  ]
}
