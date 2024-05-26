output "github_pubnlic_repos" {
  description = "個人開発並びに自己学習で管理しているリポジトリ"
  value = [
    // Public
    {repo_name = "github_terraform", visibility = "public" , archived = false , description = "GithubをTerraformで管理するためのリポジトリ"},
    {repo_name = "blog", visibility = "public" , archived = false , description = "zennの記事を管理するためのリポジトリ"},
    {repo_name = "docker", visibility = "public" , archived = false , description = "Docker関連のファイルを管理"},
    {repo_name = "ecs-learning-course", visibility = "public" , archived = false , description = "udemyのデプロイに関するサンプルコート"},
    {repo_name = "python", visibility = "public" , archived = false , description = "pythonに関するコードを管理するリポジトリ"},

    // Private
    {repo_name = "aws_terraform", visibility = "private" , archived = false , description = "AWSリソースをTerraformで管理するためのリポジトリ"},
  ]
}
