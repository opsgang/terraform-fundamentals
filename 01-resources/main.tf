# vim: et sr sw=4 ts=4 smartindent:
#
# DID YOU EXPORT AWS CREDS?
#

#
# EC2 instance with public ip
#

terraform {
    required_version = "~> 0.11"

    backend "s3" {
        bucket = "terraform-fundamentals"
    }
}

provider "aws" {
    version = "~> 1"
}

resource "aws_instance" "jin" {

  # latest stable eu-west-1 amazon hvm ebs (ssd)
  # on Wed Jul 25 09:38:24 BST 2018
  ami                  = "ami-d834aba1"
  instance_type        = "t2.micro"

  subnet_id            = "subnet-48920a01"

  associate_public_ip_address = true

  key_name             = ""

  user_data 

  root_block_device    = {
    volume_size = 8
  }

  tags {
    Name = "terraform-fundamentals-jin"
  }

}

### let's expose the ip during the run.
output "address" {
  value = "${aws_instance.jin.public_dns}"
}
