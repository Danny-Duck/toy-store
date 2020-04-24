class Category < ApplicationRecord
  has_many :toy_catagories
  has_many :toys, through: :toy_catagories
end