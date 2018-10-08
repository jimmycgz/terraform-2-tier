terraform {
  backend "s3" {
    bucket = "terra-jmy-bucket"
    key    = "tr-state-nginx-docker"
    region = "ca-central-1"
    #region="eu-west-1"
    shared_credentials_file = "/home/ubuntu/.aws/credentials"
  profile                 = "default"
  }
}
