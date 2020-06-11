class AddExplanationToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :explanation, :text
  end
end
