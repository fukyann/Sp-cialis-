class AddPhoneToChefs < ActiveRecord::Migration[5.2]
  def change
    add_column :chefs, :phone, :integer
  end
end
