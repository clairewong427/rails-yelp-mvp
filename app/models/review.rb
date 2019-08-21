class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, :content, presence: true
  validates :rating, format: { with: /\A[0-5]\z/ }
  validates :rating, numericality: { only_integer: true }
end
