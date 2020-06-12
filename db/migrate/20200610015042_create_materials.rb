class CreateMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :materials do |t|
      t.string :name,              null: false
      t.numeric :amount,      null: false
      t.integer :price,            null: false
      t.timestamps
    end
  end
end
