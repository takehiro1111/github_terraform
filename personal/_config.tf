# ======================================
# Terraform Block
# ======================================
terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.2"
    }
  }

  backend "s3" {
    bucket         = "github-state-terraform-takehiro1111"
    key            = "hcl"
    region         = "ap-northeast-1"
    acl            = "private"
    encrypt        = true
  }
}

# ======================================
# Provider Block
# ======================================
provider "github" {
  owner = module.user.github_admin_user
  token = module.token.github_token
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
