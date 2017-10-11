# Terragrunt config
terragrunt = {
  terraform {
    source = "git::git@github.com:GSA/datagov-infrastructure-modules.git//db"
  }

  include {
    path = "${find_in_parent_folders()}"
  }

  dependencies {
    paths = ["../vpc"]
  }

}

# Module config
aws_region = "us-east-1"
env        = "dev"
