provider "aws" {
  region = "us-east-1"  # Set your desired AWS region
}

resource "aws_instance" "example" {
  ami           = "ami-06f9b93a111451979"  # Amazon Linux 2 AMI, replace with your desired AMI
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorldInstance"
  }
}
