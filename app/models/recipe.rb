class Recipe < ApplicationRecord
  has_many :material_racipes
  has_many :materials, through: :material_racipes
  belongs_to :chef
end
