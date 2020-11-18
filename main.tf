terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

provider "google" {
  version = "3.5.0"

  credentials = file("Latency-container-e17305e37b63.json")

  project = "18582091517"
  region  = "australia-southeast1"
  zone    = "australia-southeast1-a"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}
