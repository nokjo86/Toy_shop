class Toy < ApplicationRecord
has_many :images, as: :imageable
belongs_to :user
belongs_to :manufacturer
has_many :toys_categories
has_many :categories, through: :toys_categories
end
