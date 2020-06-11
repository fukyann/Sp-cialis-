class AddMakeToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :make, :text
  end
end
