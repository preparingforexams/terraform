terraform {
  required_version = "1.11.0"

  backend "gcs" {
    bucket = "prep-terraform-state"
    prefix = "consolidated"
  }

  required_providers {
    doppler = {
      source  = "DopplerHQ/doppler"
      version = "~> 1.13.0"
    }
    github = {
      source  = "integrations/github"
      version = "~> 6.5.0"
    }
    google = {
      source  = "hashicorp/google"
      version = "~> 6.23.0"
    }
  }
}

locals {
  gh_app_id = "Iv23lic3F7QIQ3ouYfNO"
}

provider "doppler" {}

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
  alias   = "cancer"
  project = "cancer-be-gone"
  region  = "europe-west3"
}

provider "google" {
  alias   = "misfortune"
  project = "misfortune"
  region  = "europe-west3"
}
