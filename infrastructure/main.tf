cloud {
    organization = "sabotage-ivet"
    workspaces {
      name = "devops_ovp"
    }
  }
provider "kubernetes" {
  host                   = module.eks.cluster_endpoint
  cluster_ca_certificate = base64decode(module.eks.cluster_certificate_authority_data)
}

provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAUKQEMJPQVGMWJRGD"
  secret_key = "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"
}

data "aws_availability_zones" "available" {}

locals {
  cluster_name = "Devops1-eks-${random_string.suffix.result}"
}

resource "random_string" "suffix" {
  length  = 8
  special = false
}
