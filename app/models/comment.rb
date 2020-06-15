class Comment < ApplicationRecord
  belongs_to :chef, optional: true 
  belongs_to :customer, optional: true 
  belongs_to :recipe, optional: true
end
