terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.26.0"
    }
  }
}

provider "google" {
  project     = "testing-2-421314"
  region      = "eu-west1"
}
