variable private_key_path{
  description = "Path to the SSH private key to be used for authentication"
  default = "~/.ssh/id_rsa"
}

variable public_key_path{
  description = "Path to the SSH public key to be used for authentication"
  default = "~/.ssh/id_rsa.pub"
}

resource "aws_key_pair" "aws_21" {
  key_name   = "aws_21"               # key pair name AWS
  public_key = "${file(var.public_key_path)}"
}

resource "aws_security_group" "terraform_21" {
  name        = "terraform_21"
  description = "Used in the terraform"

  # SSH access from anywhere
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # HTTP access from the internet
  egress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # outbound internet access
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

provider "aws" {
  profile = "default"
  region  = "ap-south-1"
}

resource "aws_instance" "terraformvm" {
  # This is the ami for ubuntu server
  ami           = "ami-0c1a7f89451184c8b"
  instance_type = "t2.micro"

  key_name = "${aws_key_pair.aws_21.id}"

  vpc_security_group_ids = ["${aws_security_group.terraform_21.id}"]

   # install jenkins, java and python
  provisioner "remote-exec" {
    inline = [
      "export PATH=$PATH:/usr/bin",
      # install java 8
      "yes '' | sudo add-apt-repository ppa:webupd8team/java",
      "sudo apt-get update",
      "sudo apt-get -y install oracle-java8-installer",
      "export JAVA_HOME=/usr/lib/jvm/java-8-oracle",
      "sudo apt-get update",
      "echo $JAVA_HOME",
      "sudo apt install -y wget",
      "wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -",
      "sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'",
      "sudo apt-get -y update && sudo apt-get install jenkins -y",
      "sudo apt-get install -y python3-pip"
    ]
  }

  connection {
    type        = "ssh"
    host        = self.public_ip
    user        = "ubuntu"
    private_key = "${file(var.private_key_path)}"
  }

  tags = {
    Name = "terraformvm"
  }
}