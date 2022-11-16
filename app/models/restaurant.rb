class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  CATEGORY = %w[ chinese italian japanese french belgian ]

  validates :category, inclusion: { in: CATEGORY }
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  # before_validation :downcase_category

  # private

  # def downcase_category
  #   category.downcase!
  # end
end
