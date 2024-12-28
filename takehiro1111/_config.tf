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

  backend "s3" {
    bucket  = "tfstate-github-685339645368"
    key     = "state/state_gh"
    region  = "ap-northeast-1"
    acl     = "private"
    encrypt = true
  }

  required_version = "1.10.3"
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
