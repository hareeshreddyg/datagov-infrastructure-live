# Terragrunt config
terragrunt = {
  terraform {
    source = "github.com/hareeshreddyg/datagov-infrastructure-modules.git//vpc"
  }

  include {
    path = "${find_in_parent_folders()}"
  }

}

# Module config
aws_region = "us-east-1"
env        = "test"
vpc_name   = "test-datagov-tf"
