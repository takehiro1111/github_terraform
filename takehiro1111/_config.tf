# ======================================
# Terraform Block
# ======================================
terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.10.1"
    }
  }

  // HCP Terraformはバージョン管理でエラーになるケースが目立つため使用しない。
  # cloud {
  #   organization = "github_terraform"
  #   hostname     = "app.terraform.io"
  #   workspaces {
  #     project = "takehiro1111"
  #     name    = "production"
  #   }
  # }

  // masterアカウント
  backend "s3" {
    bucket = "tfstate-685339645368"
    key    = "github/tfstate"
    region = "ap-northeast-1"
  }

  required_version = "1.14.3"
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
