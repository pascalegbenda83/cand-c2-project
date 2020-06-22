provider "aws" {
  access_key = " "
  secret_key = " "
  region = "us-east-1"
}
# Four(4) AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "cloud_architect-t2" {
  ami = "ami-09d95fab7fff3776c"
  instance_type = "t2.micro"
  subnet_id = "subnet-0bc0286d"
  count = 4
  tags = {
    Name = "Udacity T2"
  }
}
# Two(2) m4.large EC2 instances named Udacity M4
resource "aws_instance" "cloud_architect-m4" {
  ami = "ami-01d025118d8e760db"
  instance_type = "m4.large"
  subnet_id = "subnet-620bb32f"
  count = 2
  tags = {
    Name = "Udacity M4"
  }
}