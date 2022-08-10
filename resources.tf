resource "google_compute_address" "our_development_network" {
    name = "devnetwork"
    auto_create_subnetwork = true
}

resource "aws_vpc" "environment-example" {
    cidr_block = "10.0.0.0/16"
    enable_dns_hostnames = true
    enable_dns_support = true
    tags {
        Name = "Terraform AWS Example"
    }
}