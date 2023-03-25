terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}
resource "google_service_account" "common_service_account" {
  account_id   = var.common_account_id
  display_name = var.common_display_name
  description  = var.common_description
  project      = var.project 
}
