class Category < ApplicationRecord
  has_many :toys_categories
  has_many :books, through: :toys_categories
end
