class Comment < ApplicationRecord
  belongs_to :chef
  belongs_to :customer
end
