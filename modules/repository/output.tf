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
    {repo_name = "az_terraform", visibility = "public" , archived = false , description = "Azure環境でのTerraform実装"},
    {repo_name = "prometheus", visibility = "public" , archived = false , description = "Prometheusの監視基盤の構築"},
    {repo_name = "locust", visibility = "public" , archived = false , description = "負荷試験ツールのLocustを構築"},
    {repo_name = "k8s", visibility = "public" , archived = false , description = "Kubernetes関連の設定"},
    {repo_name = "node", visibility = "public" , archived = false , description = "Node.jsを用いた実装"},
    {repo_name = "menta-python-lesson", visibility = "private" , archived = false , description = "Mentaの学習用リポジトリ", allow_auto_merge = false },
    {repo_name = "menta-typescript-lesson", visibility = "private" , archived = false , description = "Mentaの学習用リポジトリ", allow_auto_merge = false},
    {repo_name = "pytest", visibility = "public" , archived = false , description = "pytestの学習"},
    {repo_name = "menta-flask-todo", visibility = "private" , archived = false , description = "Flaskを用いたTODOアプリの実装", allow_auto_merge = false},
    {repo_name = "menta-go-lesson", visibility = "private" , archived = false , description = "Golangの学習用リポジトリ", allow_auto_merge = false},
    {repo_name = "jest", visibility = "public" , archived = false , description = "", allow_auto_merge = false},
    {repo_name = "golang", visibility = "public" , archived = false , description = "Go言語の学習用", allow_auto_merge = false},
  ]
}
