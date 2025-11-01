variable "github_token" {
  description = "GitHub Personal Access Token"
  type        = string
  sensitive   = true
}

variable "github_admin_user" {
  description = "GitHub Admin User"
  type        = string
  default = "takehiro1111"
}
