terraform {
        cloud {
            organization = "devops_ovp"
            workspaces {
              name = "devops1"
            }
        }
}

provider "kubernetes" {
  host                   = module.eks.cluster_endpoint
  cluster_ca_certificate = base64decode(module.eks.cluster_certificate_authority_data)
}

provider "aws" {
  region     = "us-west-2"
}

data "aws_availability_zones" "available" {}

locals {
  cluster_name = "Devops1-eks"
}
