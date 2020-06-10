class Material < ApplicationRecord
  has_many :material_racipes
  has_many :recipes, through: :material_racipes
  belongs_to :chef
end
