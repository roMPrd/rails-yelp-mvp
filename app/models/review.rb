class Review < ApplicationRecord
  belongs_to :restaurant
  RATING = [0, 1, 2, 3, 4, 5]

  validates :rating, inclusion: { in: RATING }

  validates :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :content, presence: true
end
