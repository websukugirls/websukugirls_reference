class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: {message: 'は入力必須項目です'}
  validates :subtitle, presence: {message: 'は入力必須項目です'}
  validates :content, presence: {message: 'は入力必須項目です'}
  validates :tag_id, presence: {message: 'は入力必須項目です'}
end
