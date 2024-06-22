module "pypi_repo" {
  source = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.1.1"
  name   = "k8s-pypi"
  required_status_checks = [
    "build-container-image / build",
  ]
  enable_actions = false
}
