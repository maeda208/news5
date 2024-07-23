class Article < ApplicationRecord
  has_one_attached :image
  has_many :comments
  validates :image, presence: true
end
