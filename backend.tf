terraform {
  backend "gcs" {
    bucket = "bkt-test-dev-apps-tfstate-01"
    prefix = "test-infra"
  }
}

