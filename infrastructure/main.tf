
terraform {
        cloud {
            organization = "devops_ovp"
            workspaces {
              name = "devops1-work"
            }
        }
}
provider "aws" {
    region = "us-west-2"
}

data "aws_availability_zones" "azs" {
    state = "available"
}
