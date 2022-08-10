
terraform {
        cloud {
            organization = "devops_ovp"
            workspaces {
              name = "devops1-work"
            }
        }
}
provider "aws" {
    region = "us-east-1"
}

data "aws_availability_zones" "azs" {
    state = "available"
}
