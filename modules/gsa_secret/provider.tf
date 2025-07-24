terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.45.0"
    }
    scaleway = {
      source  = "scaleway/scaleway"
      version = "~> 2.58.0"
    }
  }
}
