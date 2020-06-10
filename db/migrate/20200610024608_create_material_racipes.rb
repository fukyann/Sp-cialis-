class CreateMaterialRacipes < ActiveRecord::Migration[5.2]
  def change
    create_table :material_racipes do |t|
      t.references :material, foreign_key: true
      t.references :recipe,   foreign_key: true
      t.timestamps
    end
  end
end
