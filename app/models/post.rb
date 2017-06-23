class Post < ApplicationRecord
  belongs_to :user

  validates :title, length: { maximum: 50, minimum: 3 }, presence: true
  validates :description, presence: true
end
