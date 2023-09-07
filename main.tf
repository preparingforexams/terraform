terraform {
  required_version = "1.5.7"

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
      version = "~> 4.81.0"
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
