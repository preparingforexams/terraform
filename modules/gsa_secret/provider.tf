terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.38.0"
    }
    scaleway = {
      source  = "scaleway/scaleway"
      version = "~> 2.55.0"
    }
  }
}
