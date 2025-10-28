terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 7.9.0"
    }
    scaleway = {
      source  = "scaleway/scaleway"
      version = "~> 2.60.0"
    }
  }
}
