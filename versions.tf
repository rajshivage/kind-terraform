terraform {
  required_version = ">= 1.2.3"

  required_providers {
    kind = {
      source = "tehcyx/kind"
      version = "0.0.13"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.10"
    }
    
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">= 1.7.0"
    }

    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.6"
    }
  }
}
