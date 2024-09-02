class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :post
  
  validates :user_id, uniqueness: {scope: :post_id}
  #uniqueness:いいねするユーザーが重複していないかをチェック
  #scope:user_idとpost_idのペアに対して、すでに同じ値のペアがテーブルに保存されていないかを判定
end
