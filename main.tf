terraform {
  required_version = "1.5.4"

  backend "gcs" {
    bucket = "prep-terraform-state"
    prefix = "consolidated"
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
    google = {
      version = "~> 4.75.0"
    }
  }
}

provider "github" {
  owner = "preparingforexams"
}

provider "google" {
  project = "prep-telegram-bots"
  region  = "europe-west3"
}
