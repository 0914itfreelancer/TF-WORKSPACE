terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.35.0"
    }
  }
}

provider "google" {
  # Configuration options
  project = "terraform-gcp-427705"
  region = "asia-northeast1"
  zone = "asia-northeast1-a"
}

resource "google_storage_bucket" "gs1" {
  name = "bucket-from-tf-usrpwd"
  location = "ASIA"
  force_destroy = true
}