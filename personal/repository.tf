resource "github_repository" "personal_repos" {
  for_each = { for k, v in module.repo.github_pubnlic_repos : v.repo_name => v }

  name        = each.value.repo_name
  description = each.value.description
  archived    = lookup(each.value, "archived", false)
  visibility  = each.value.visibility

  # リポジトリの機能設定のデフォルト値
  has_issues        = true
  has_projects      = true
  has_wiki          = true
  allow_merge_commit = true
  allow_rebase_merge = false
  allow_squash_merge = true


  lifecycle {
    ignore_changes = [
      has_downloads,
      has_issues,
      has_projects,
      has_wiki,
    ]
  }
}
