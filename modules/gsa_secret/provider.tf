terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.44.0"
    }
    scaleway = {
      source  = "scaleway/scaleway"
      version = "~> 2.57.0"
    }
  }
}
