resource "google_compute_network" "our_development_network" {
  name                   = "devnetwork"
  auto_create_subnetwork = true
}

resource "google_compute_subnetwork" "dev-subnet" {
  ip_cidr_range = "10.0.1.0/16"
  name          = "devsubnet"
  network       = google_compute_network.our_development_network.self_link
  region        = "us-west1"
}

resource "aws_vpc" "environment-example" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags {
    Name = "Terraform AWS Example"
  }
}

resource "aws_subnet" "subnet1" {
  cidr_block        = aws_vpc.environment-example.id
  vpc_id            = aws_vpc.environment-example.id
  availability_zone = "us-west-2b"
}

resource "aws_security_group" "subnetsecurity" {
  vpc_id = aws_vpc.environment-exampl.id

  ingress = {
    cidr_block = [
      "${aws_vp.environment-example.cidr_block}"
    ]

    from_port = 80
    to_port   = 80
    protocol  = "tcp"
  }

}