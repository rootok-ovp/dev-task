module "eks"{
    source = "terraform-aws-modules/eks/aws"
    version = "17.1.0"
    cluster_name = local.cluster_name
    cluster_version = "1.20"
    subnets = module.vpc.private_subnets

    tags = {
        Name = "Devops1-EKS-Cluster"
    }

    vpc_id = module.vpc.vpc_id
    workers_group_defaults = {
        root_volume_type = "gp2"
    }

    worker_groups = [
        {
            name = "Worker-Group-1"
            instance_type = "t2.micro"
            min_size     = 1
            max_size     = 3
            desired_size = 2

            pre_bootstrap_user_data = <<-EOT
            echo 'foo bar'
            EOT
            asg_desired_capacity = 2
            additional_security_group_ids = [aws_security_group.worker_group_mgmt_one.id]
        },
        {
            name = "Worker-Group-2"
            instance_type = "t2.micro"
            min_size     = 1
            max_size     = 3
            desired_size = 2

            pre_bootstrap_user_data = <<-EOT
            echo 'foo bar'
            EOT
            asg_desired_capacity = 1
            additional_security_group_ids = [aws_security_group.worker_group_mgmt_two.id]
        },
    ]
}

data "aws_eks_cluster" "cluster" {
    name = module.eks.cluster_id
}

data "aws_eks_cluster_auth" "cluster" {
    name = module.eks.cluster_id
}
