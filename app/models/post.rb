class Post < ApplicationRecord
  has_many :comments, class_name: "Comment", foreign_key: "post_id", dependent: :destroy
  validates :title, presence: { message: "can't be blank" }, length: { minimum: 3 }
  validates :content, presence: { message: "can't be blank" }, length: { minimum: 5 }
end
