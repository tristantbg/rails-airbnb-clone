class AddPriceToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :price, :integer
  end
end
