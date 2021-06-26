variable "eks_cluster_name" {}
variable "environment" {}
variable "vpc_cidr_block" {}
variable "private_subnet_cidr_block" {}
variable "public_subnet_cidr_blocks" {}
variable "availability_zones" {}
variable "region" {}
variable "node_group_name"{}
variable "worker-node-ssh-key" {}
variable "eks-cw-logging" {
  type        = list
}
