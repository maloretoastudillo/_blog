class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  has_one_attached :thumbnail
  has_many_attached :images
end
