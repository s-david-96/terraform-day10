
terraform {
  backend "gcs" {
    bucket = "newtestbucket"
    prefix = "terraform/state"
    }
}


provider "google" {
    project = "las-cloudlabs3"
    region  = "us-central1"
  
}
resource "google_storage_bucket" "action1" {
    name     = "newtestbucketfromactions"
    location = "US"
  
}