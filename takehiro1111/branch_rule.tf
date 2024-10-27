#########################################################
# Branch protection rules
#########################################################
// Organizationsが整備できたら設定する。
// 古い方のルール設定。
# resource "github_branch_protection" "example" {
#   repository_id     = "aws_terraform"
#   pattern = "test_20241027"

#   enforce_admins   = true
#   allows_deletions = true
#   lock_branch = false // 書き込み出来るようにするため。
#   allows_force_pushes = true
#   # force_push_bypassers = module.user.github_bypass_user

#   required_status_checks {
#     strict   = false // 厳格に制限したくないため。CI/CDでの制限は後工程とする。(2024/10/27)
#   }

#   required_pull_request_reviews {
#     dismiss_stale_reviews          = true
#     require_code_owner_reviews     = false // 自動マージ機能を使用したいため。
#     restrict_dismissals = false
#     # dismissal_restrictions =  module.user.github_bypass_user
#     required_approving_review_count = 0  # Renovateの自動マージを設定したいため、承認レビュー数を0にして無効化
#     require_last_push_approval      = false  # Renovateの自動マージを設定したいため、最終プッシュ承認を無効化
#   }

# #   restrict_pushes {
# #     blocks_creations = false // リストに含まれていないユーザーやチームでも、新しいブランチを作成できる
# #     # push_allowances = module.user.github_bypass_user
# #   }
# }
