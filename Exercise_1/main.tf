# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  access_key = "ASIARCIE67S7JQQY5TN3"
  secret_key = "/v+vOuWRJjgEfmxZ3x7z8KYM0FAGe3097C0PFldm"
  token = "FwoGZXIvYXdzECEaDBkQzyfl9y8te87WHiK8AU5faxb5Ese2U7zOaKwx4mjzXJ04ZUwrNgpxCSz8pnJwxS2dh8aELO3+N80pUzipYAKalnySEEpyAbiswX3br8+URhHPYrTbCw04ndHMrGLcbfAvhGkryWhadPowXB3iXU1VMlv644z+pioWDgc6i/qx098sgU2WZyRCR4Cos/aONn5ms7gGJQySZjORGld+TLg/ZbwJpJCPgegq7E9NyfymeOIAdVrHhlNr0XRvnrXy4Rs+s8PiGsf223xQKKqe4YgGMi0nga0L3Bk7dMT4JItDHjpxTHZNw1HR/b6xi5NjJalEJnhhNvfx+qr0D311fBs="
  region = "us-east-1"
}


# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Udacity_T2" {
  count = "4"
  ami = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"
  tags = {
    Name = "Udacity T2"
  }
}


# TODO: provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "Udacity_M4" {
  count = "2"
  ami = "ami-0323c3dd2da7fb37d"
  instance_type = "m4.large"
  tags = {
    Name = "Udacity M4"
  }
}