resource "github_repository" "personal_repos" {
  for_each = { for k, v in module.repo.github_pubnlic_repos : v.repo_name => v }

  name        = each.value.repo_name
  description = each.value.description
  archived    = lookup(each.value, "archived", false)
  visibility  = each.value.visibility
  delete_branch_on_merge = true
  vulnerability_alerts = true

  lifecycle {
    ignore_changes = [
      has_downloads,
      has_issues,
      has_projects,
      has_wiki,
      pages,
      homepage_url
    ]
  }
}
