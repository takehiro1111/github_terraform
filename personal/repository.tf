resource "github_repository" "personal_repos" {
  for_each = {for k,v in module.repo.github_pubnlic_repos : v.repo_name => v   }

  name        = each.value.repo_name
  description = each.value.description
  archived = lookup(each.value , "archived" , false)
  visibility = each.value.visibility

  lifecycle {
    ignore_changes = [ 
      merge_commit_message,
      merge_commit_title,
      squash_merge_commit_message,
      squash_merge_commit_title,
      allow_merge_commit,
      allow_rebase_merge,
      allow_squash_merge,
    ]
  }
}
