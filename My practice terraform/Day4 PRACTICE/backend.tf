terraform {
  backend "s3" {
    bucket = "abhijeet-yadav-new12387"
    key    = "path/to/terraform.tfstate"
    region = "ap-south-1"
  }
}
