class AddStreetToChefs < ActiveRecord::Migration[5.2]
  def change
    add_column :chefs, :street, :string
  end
end
