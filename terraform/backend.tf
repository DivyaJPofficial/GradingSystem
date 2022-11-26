terraform {
  backend "s3" {
    bucket                      = "divya-cloud-computing-ucmo"
    key                         = "flaskapp"
    region                      = "us-east-2"
    skip_credentials_validation = true
    encrypt                     = true
  }
}
