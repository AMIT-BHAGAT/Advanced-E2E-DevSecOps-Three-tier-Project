terraform {

  required_providers {

    aws = {

      source = "hashicorp/aws"

      version = "~> 4.18.0"

    }

  }



  backend "s3" {

    bucket = "kubernetesdevopsdata"

    key = "state/terraform.tfstate"

    region = "ap-south-1"

    encrypt = true

    dynamodb_table = "Kubernetes_devops"

  }

}