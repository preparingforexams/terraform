terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.40.0"
    }
    scaleway = {
      source  = "scaleway/scaleway"
      version = "~> 2.56.0"
    }
  }
}
