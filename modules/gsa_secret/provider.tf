terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.36.0"
    }
    scaleway = {
      source  = "scaleway/scaleway"
      version = "~> 2.54.0"
    }
  }
}
