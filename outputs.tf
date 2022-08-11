output "cluster_endpoint" {
  description = "K8s Cluster Endpoint"
  value       = kind_cluster.default.endpoint
}

# output "cluster_kubeconfig" {
#   description = "K8s Cluster Endpoint"
#   value       = kind_cluster.default.kubeconfig
# }