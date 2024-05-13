terraform {
  required_version = "1.8.3"

  backend "gcs" {
    bucket = "prep-terraform-state"
    prefix = "consolidated"
  }

  required_providers {
    doppler = {
      source  = "DopplerHQ/doppler"
      version = "~> 1.7.0"
    }
    github = {
      source  = "integrations/github"
      version = "~> 6.2.0"
    }
    google = {
      version = "~> 5.29.0"
    }
  }
}

provider "doppler" {}

provider "github" {
  owner = "preparingforexams"
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
