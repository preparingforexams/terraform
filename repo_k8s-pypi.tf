module "pypi_repo" {
  source = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v4.1.3"
  name   = "k8s-pypi"
  required_status_checks = [
    "build-container-image / build",
  ]
}
