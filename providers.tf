
terraform {
  backend "gcs" {
    bucket = "cloudlabs3-bucket1"
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