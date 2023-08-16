module "pypi_repo" {
  source = "./modules/repo"
  name   = "k8s-pypi"
  required_status_checks = [
    "build-container-image",
  ]
}
