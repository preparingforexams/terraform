terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.48.0"
    }
    scaleway = {
      source  = "scaleway/scaleway"
      version = "~> 2.59.0"
    }
  }
}
