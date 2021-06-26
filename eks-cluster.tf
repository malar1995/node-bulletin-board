resource "aws_eks_cluster" "main" {
  name     = "${var.eks_cluster_name}-${var.environment}"
  role_arn = aws_iam_role.eks_cluster.arn
  vpc_config {
    security_group_ids      = [aws_security_group.eks_cluster.id, aws_security_group.eks_nodes.id]
    endpoint_private_access = false
    endpoint_public_access  = true
    subnet_ids = flatten([aws_subnet.private_subnet.*.id])
  }
  enabled_cluster_log_types = var.eks-cw-logging

  depends_on = [
    aws_iam_role_policy_attachment.aws_eks_cluster_policy,
    aws_iam_role_policy_attachment.aws_eks_service_policy
  ]
}

# 