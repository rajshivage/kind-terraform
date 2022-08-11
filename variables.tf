variable "pod_subnet" {
    type        = string
    description = "Subnet CIDR for pod networking"
    nullable    = false    
}

variable "service_subnet" {
    type        = string
    description = "Subnet CIDR for k8s services"
    nullable    = false    
}

variable "api_server_address" {
    type        = string
    description = "API server listening address"
    nullable    = false  
}

variable "api_server_port" {
    type        = string
    description = "API server listening port"
    default     = 6443
    nullable    = false  
}