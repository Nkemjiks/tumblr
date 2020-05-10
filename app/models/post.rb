class Post < ApplicationRecord
  validates :title, presence: { message: "can't be blank" }, length: { minimum: 3 }
  validates :content, presence: { message: "can't be blank" }, length: { minimum: 5 }
end
