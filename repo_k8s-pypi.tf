module "pypi_repo" {
  source = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v1.1.0"
  name   = "k8s-pypi"
  required_status_checks = [
    "build-container-image",
  ]
  create_default_branch = false
}
