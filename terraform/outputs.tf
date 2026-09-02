output "helm_release_name" {
  description = "Deployed Helm release name"
  value       = helm_release.ml_api.name
}