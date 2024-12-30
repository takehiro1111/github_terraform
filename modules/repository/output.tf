output "github_pubnlic_repos" {
  description = "個人開発並びに自己学習で管理しているリポジトリ"
  value = [
    # Public Repositories
    {repo_name = "github_terraform", visibility = "public" , archived = false , description = "GithubをTerraformで管理するためのリポジトリ"},
    {repo_name = "blog", visibility = "public" , archived = false , description = "zennの記事を管理するためのリポジトリ"},
    {repo_name = "docker", visibility = "public" , archived = false , description = "Docker関連のファイルを管理"},
    {repo_name = "ecs-learning-course", visibility = "public" , archived = false , description = "udemyのデプロイに関するサンプルコート"},
    {repo_name = "python", visibility = "public" , archived = false , description = "pythonに関するコードを管理するリポジトリ"},
    {repo_name = "serverless", visibility = "public" , archived = false , description = "CDK,SDK,Lambdaのコード管理"},
    {repo_name = "gcp_terraform", visibility = "public" , archived = false , description = "GCPに関するTerraformコード管理"},
    {repo_name = "tutorial", visibility = "public" , archived = false , description = "プログラミング学習"},
    {repo_name = "aws_terraform", visibility = "public" , archived = false , description = "AWSリソースをTerraformで管理するためのリポジトリ"},
    {repo_name = "flask", visibility = "public" , archived = false , description = "Flaskを用いたコードを管理するためのリポジトリ"},
    {repo_name = "ts", visibility = "public" , archived = false , description = "TypeScriptの基礎学習"},

  ]
}
