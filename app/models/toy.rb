class Toy < ApplicationRecord
  validates :name, presence: true
  belongs_to :user
  belongs_to :manurfacturer
  has_many :toy_categories
  has_many :categories, through: :toy_categories
end
