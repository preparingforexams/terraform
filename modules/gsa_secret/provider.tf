terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 7.1.0"
    }
    scaleway = {
      source  = "scaleway/scaleway"
      version = "~> 2.59.0"
    }
  }
}
