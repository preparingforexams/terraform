module "pypi_repo" {
  source = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v4.0.1"
  name   = "k8s-pypi"
  required_status_checks = [
    "build-container-image / build",
  ]
}