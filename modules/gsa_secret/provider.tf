terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 7.12.0"
    }
    scaleway = {
      source  = "scaleway/scaleway"
      version = "~> 2.63.0"
    }
  }
}
