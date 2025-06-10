terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.39.0"
    }
    scaleway = {
      source  = "scaleway/scaleway"
      version = "~> 2.55.0"
    }
  }
}
