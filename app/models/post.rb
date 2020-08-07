class Post < ApplicationRecord
  validates :title, length: { maximum: 20 }, presence: true
  validates :content, length: { maximum: 2000 }, presence: true

  belongs_to :user

  has_many :responses
end
