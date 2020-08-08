class Post < ApplicationRecord
  validates :title, length: { maximum: 20 }, presence: true
  validates :content, length: { maximum: 2000 }, presence: true

  belongs_to :user

  has_many :responses
  has_many :post_category_relations
  has_many :categories, through: :post_category_relations
end
