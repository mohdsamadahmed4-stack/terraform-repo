variable "aws_region" {
  default = "us-east-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami_id" {
  description = "Amazon Linux AMI"
  default     = "ami-0fa3fe0fa7920f68e" # us-east-1 Amazon Linux 2
}