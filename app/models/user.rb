class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts
  has_many :likes
  has_many :comments

  def name
    "#{first_name} #{last_name}"
  end
  
  def like_id(comment)
    comment.likes.find_by(user: self)
  end

  def likes_this_comment?(comment)
    like_id(comment) || nil
  end
end
