class AddNicknameToChefs < ActiveRecord::Migration[5.2]
  def change
    add_column :chefs, :nickname, :string
  end
end
