output "github_pubnlic_repos" {
  description = "個人開発並びに自己学習で管理しているリポジトリ"
  value = [
    // Public
    {repo_name = "github_terraform", visibility = "public" , archived = false , description = "GithubをTerraformで管理するためのリポジトリ"},
    {repo_name = "blog", visibility = "public" , archived = false , description = ""},
    {repo_name = "docker", visibility = "public" , archived = false , description = ""},
    {repo_name = "ecs-learning-course", visibility = "public" , archived = false , description = ""},

    # // Private
    {repo_name = "hcl", visibility = "private" , archived = false , description = ""},
  ]
}
