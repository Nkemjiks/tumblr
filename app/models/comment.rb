class Comment < ApplicationRecord
  belongs_to :post
  validates :name, presence: { message: "can't be blank" }, length: { minimum: 3 }
  validates :body, presence: { message: "can't be blank" }, length: { minimum: 5 }
end
