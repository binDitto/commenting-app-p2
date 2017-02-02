class Comment < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3, maximum: 25 }, uniqueness: true
  validates :description, presence: true, length: { minimum: 5, maximum: 200 }, uniqueness: true
end
