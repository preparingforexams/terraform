terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 7.10.0"
    }
    scaleway = {
      source  = "scaleway/scaleway"
      version = "~> 2.62.0"
    }
  }
}
