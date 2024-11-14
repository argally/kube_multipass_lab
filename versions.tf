terraform {
  required_version = ">= 1.4.0"
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.33.0"
    }
  }
}

provider "kubernetes" {
  config_path    = "~/.kube/config-multipass"
  config_context = "kubernetes-admin@kubernetes"
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config-multipass"
  }
}