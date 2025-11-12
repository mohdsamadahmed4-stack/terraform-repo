# resource "aws_instance" "name" {
#     ami = "ami-07860a2d7eb515d9a"
#     instance_type = "t2.micro"
#     count = 2
#     # tags = {
#     #   Name = "samad"
#     # }
#   tags = {
#       Name = "samad-${count.index}"
#     }
# }

variable "env" {
    type = list(string)
    default = [ "sam","amd"]
  
}

resource "aws_instance" "name" {
    ami = "ami-07860a2d7eb515d9a"
    instance_type = "t2.micro"
    count = length(var.env)
    # tags = {
    #   Name = "dev"
    # }
  tags = {
      Name = var.env[count.index]
    }
}