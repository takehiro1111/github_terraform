output "github_pubnlic_repos" {
  description = "個人開発並びに自己学習で管理しているリポジトリ"
  value = [
    {repo_name = "github_terraform", visibility = "public" , archived = false , description = "GIthubをTerraformで管理するためのリポジトリ"}
  ]
}
