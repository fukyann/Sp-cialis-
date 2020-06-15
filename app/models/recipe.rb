class Recipe < ApplicationRecord
  has_many :material_recipes
  has_many :materials, through: :material_recipes
  belongs_to :chef, optional: true 

  mount_uploader :image, ImageUploader
end
