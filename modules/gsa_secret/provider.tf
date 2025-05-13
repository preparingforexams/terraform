terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.35.0"
    }
    scaleway = {
      source  = "scaleway/scaleway"
      version = "~> 2.53.0"
    }
  }
}
