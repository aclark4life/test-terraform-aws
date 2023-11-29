// Via ChatGPT (thanks!)

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-06f9b93a111451979"
  instance_type = "t2.micro"

  vpc_security_group_ids = ["sg-0b545a7e"]
  subnet_id              = "subnet-2333d62c"

  tags = {
    Name = "HelloWorldInstance"
  }
}
