# Terragrunt config
terragrunt = {
  terraform {
    source = "github.com/hareeshreddyg/datagov-infrastructure-modules.git//app"
  }

  include {
    path = "${find_in_parent_folders()}"
  }

  dependencies {
    paths = ["../db"]
  }

}

# Module config
aws_region = "us-east-1"
env        = "test"
