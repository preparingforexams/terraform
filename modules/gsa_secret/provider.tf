terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.34.0"
    }
    scaleway = {
      source  = "scaleway/scaleway"
      version = "~> 2.52.0"
    }
  }
}
