class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name,              null: false
      t.numeric :amount,      null: false
      t.integer :cost,             null: false
      t.string :image
      t.references :material
      t.references :chef,          foreign_key: true
      
      t.timestamps
    end
  end
end
