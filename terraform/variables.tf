variable "kubeconfig" {
  description = "Path to Kubernetes kubeconfig"
  type        = string
  default     = "~/.kube/config"
}

variable "release_name" {
  description = "Helm release name"
  type        = string
  default     = "ml-api-dev"
}

variable "namespace" {
  description = "Kubernetes namespace"
  type        = string
  default     = "default"
}

variable "values_file" {
  description = "Environment-specific Helm values file"
  type        = string
  default     = "../helm/ml-api/values-dev.yaml"
}