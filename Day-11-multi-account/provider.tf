provider "aws" {
    region = "us-east-1"
    profile = "default"
  
}
provider "aws" {
    region = "us-west-2"
    alias = "oregon"
    profile = "samad"
  
}