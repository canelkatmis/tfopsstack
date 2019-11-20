provider "aws" {
  region = "eu-central-1"
}

terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "canelkatmis"
    workspaces {
      name = "tfopsstack"
    }
  }
}

resource "null_resource" "root2" {
  triggers = {
    value = "${timestamp()}"
  }
}

