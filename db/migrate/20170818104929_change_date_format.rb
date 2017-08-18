class ChangeDateFormat < ActiveRecord::Migration[5.1]
  def up
    change_column :contracts, :start_time, :date
    change_column :contracts, :end_time, :date
  end

    def down
    change_column :contracts, :start_time, :datetime
    change_column :contracts, :end_time, :datetime
  end
end
