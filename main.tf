provider "kind" {}

resource "kind_cluster" "default" {
  name = "k8s-kind-cluster"
  wait_for_ready = true
  
  kind_config {
    kind = "Cluster"
    api_version = "kind.x-k8s.io/v1alpha4"

    networking {
      api_server_address = var.api_server_address
      api_server_port = var.api_server_port
      disable_default_cni = false
      pod_subnet = var.pod_subnet
      service_subnet = var.service_subnet
    }

    node {
      role = "control-plane"

      kubeadm_config_patches = [
              "kind: InitConfiguration\nnodeRegistration:\n  kubeletExtraArgs:\n    node-labels: \"ingress-ready=true\"\n"
          ]

          extra_port_mappings {
              container_port = 80
              host_port      = 80
          }
          extra_port_mappings {
              container_port = 443
              host_port      = 443
          }
    }

    node {
      role = "worker"
    }

    node {
      role = "worker"
    }

    node {
      role = "worker"
    }
  }
}
