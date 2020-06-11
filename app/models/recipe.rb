class Recipe < ApplicationRecord
  has_many :material_recipes
  has_many :materials, through: :material_recipes
  belongs_to :chef
end
