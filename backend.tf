terraform {
  backend "gcs" {
    bucket = "bkt-test-dev-apps-tfstate"
    prefix = "test-infra"
  }
}

