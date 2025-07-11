# ======================================
# Terraform Block
# ======================================
terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.6.0"
    }
  }

  cloud {
    organization = "github_terraform"
    hostname     = "app.terraform.io"
    workspaces {
      project = "takehiro1111"
      name    = "production"
    }
  }

  required_version = "1.12.2"
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
module "repo" {
  source = "../modules/repository"
}
