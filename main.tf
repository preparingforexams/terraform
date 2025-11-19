terraform {
  required_version = "1.13.5"

  backend "gcs" {
    bucket = "prep-terraform-state"
    prefix = "consolidated"
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.8.0"
    }
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

locals {
  gh_app_id = "Iv23lic3F7QIQ3ouYfNO"
}

provider "github" {
  owner             = "preparingforexams"
  parallel_requests = true

  app_auth {
    id              = local.gh_app_id
    pem_file        = null
    installation_id = "54329043"
  }
}

provider "google" {
  project = "prep-telegram-bots"
  region  = "europe-west3"
}

provider "scaleway" {
  organization_id = "b46558da-3178-499d-99c7-e67da32d616e"
  region          = "fr-par"
}
