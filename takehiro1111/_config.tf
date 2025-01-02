# ======================================
# Terraform Block
# ======================================
terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.4.0"
    }
  }

  cloud {
    organization = "github_terraform"
    hostname     = "app.terraform.io"
    workspaces {
      project = "takehiro1111"
      name = "production"
    }
  }

  # backend "remote" {
  #   cloud {
  #     organization = "github_terraform"
  #     hostname     = "app.terraform.io"
  #     workspaces {
  #       project = "takehiro1111"
  #     }
  #   }
  # }


  # backend "s3" {
  #   bucket  = "tfstate-github-685339645368"
  #   key     = "state/state_gh"
  #   region  = "ap-northeast-1"
  #   acl     = "private"
  #   encrypt = true
  # }

  required_version = "1.10.3"
}

# ======================================
# Provider Block
# ======================================
provider "github" {
  owner = var.github_admin_user
  token = var.github_token
}

# ======================================
# Module Block
# ======================================
module "token" {
  source = "../modules/token/"
}

module "user" {
  source = "../modules/user/"
}

module "repo" {
  source = "../modules/repository"
}
