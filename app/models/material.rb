class Material < ApplicationRecord
  has_many :material_recipes
  has_many :recipes, through: :material_recipes
  belongs_to :chef
end
