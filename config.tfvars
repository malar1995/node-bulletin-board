region              = "us-east-1"
eks_cluster_name    = "tspring"
environment         = "testing"
vpc_cidr_block      = "10.68.0.0/16"
availability_zones  = ["us-east-1a", "us-east-1b"]
public_subnet_cidr_blocks = ["10.68.1.0/24", "10.68.2.0/24"]
private_subnet_cidr_block = ["10.68.3.0/24", "10.68.4.0/24"]
worker-node-ssh-key = "demovirginiakey"
eks-cw-logging      = ["api", "audit", "authenticator", "controllerManager", "scheduler"]
additional_tags = {
    ProvisionBy = "Terraform"
    Environment = "testing"
}
