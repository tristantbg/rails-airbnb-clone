class AddColumnToContracts < ActiveRecord::Migration[5.1]
  def change
    add_column :contracts, :description, :text
  end
end
