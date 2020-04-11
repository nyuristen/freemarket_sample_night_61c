crumb :root do
  link "Home", root_path
end

# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).

crumb :new do
  link "商品出品", new_gift_path
  parent :root
end
crumb :edit do
  link "出品商品編集", edit_gift_path
  parent :root
end
crumb :show do
  link "商品詳細", gift_path(params[:id]), method: :get
  parent :root
end
# crumb :purchase_index do
#   link "購入確認", purchase_index_path(params[:gift_id])
#   parent :show
# end
# crumb :purchase_done do
#   link "購入完了", pay_purchase_index_path(params[:buyer_id]), method: :get
#   parent :purchase_index
# end

crumb :card_index do
  link "クレジットカード一覧＆登録", cards_path
  parent :mypage
end

crumb :card_new do
  link "クレジットカード登録", new_card_path
  parent :card_index
end

crumb :mypage do
  link "マイページ", mypage_index_path
  parent :root
end

crumb :logout do
  link "ログアウト", logout_index_path
  parent :mypage
end

crumb :profile do
  link "プロフィール", mypage_profile_path
  parent :mypage
end

crumb :identification do
  link "本人情報の登録", mypage_identification_path
  parent :mypage
end