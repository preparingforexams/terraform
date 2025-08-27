terraform {
  required_version = "1.13.1"

  backend "gcs" {
    bucket = "prep-terraform-state"
    prefix = "consolidated"
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.6.0"
    }
    google = {
      source  = "hashicorp/google"
      version = "~> 6.49.0"
    }
    scaleway = {
      source  = "scaleway/scaleway"
      version = "~> 2.59.0"
    }
  }
}

locals {
  gh_app_id = "Iv23lic3F7QIQ3ouYfNO"
}

provider "github" {
  owner = "preparingforexams"
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

provider "google" {
  alias   = "misfortune"
  project = "misfortune"
  region  = "europe-west3"
}

provider "scaleway" {
  organization_id = "b46558da-3178-499d-99c7-e67da32d616e"
  region          = "fr-par"
}
