class AddStoreToChefs < ActiveRecord::Migration[5.2]
  def change
    add_column :chefs, :store, :string
  end
end
