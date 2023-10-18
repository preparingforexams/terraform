module "pypi_repo" {
  source = "github.com/BlindfoldedSurgery/terraform-repo-module"
  name   = "k8s-pypi"
  required_status_checks = [
    "build-container-image",
  ]
  create_default_branch = false
}
