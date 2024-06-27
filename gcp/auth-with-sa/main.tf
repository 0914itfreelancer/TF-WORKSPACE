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
  credentials = "terraform-gcp-427705-096facff7386.json"
}

resource "google_storage_bucket" "gs1" {
  name = "bucket-from-tf-using-sa-123"
  location = "ASIA"
  force_destroy = true
}