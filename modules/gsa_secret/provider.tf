terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.37.0"
    }
    scaleway = {
      source  = "scaleway/scaleway"
      version = "~> 2.55.0"
    }
  }
}
