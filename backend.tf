terraform {
  backend "gcs" {
    bucket = "bkt-test-dev-apps-tfstate"
    prefix = "testing-infra"
  }
}

