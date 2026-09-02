terraform {
  required_providers {
    helm = {
      source = "hashicorp/helm"
    }
  }
}

provider "helm" {
  kubernetes = {
    config_path = pathexpand(var.kubeconfig)
  }
}

resource "helm_release" "ml_api" {
  name             = var.release_name
  chart            = "../helm/ml-api"
  namespace        = var.namespace
  create_namespace = true

  values = [
    file(var.values_file)
  ]
}