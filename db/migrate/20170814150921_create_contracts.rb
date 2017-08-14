class CreateContracts < ActiveRecord::Migration[5.1]
  def change
    create_table :contracts do |t|
      t.integer :employer_id, foreign_key: true
      t.integer :freelancer_id, foreign_key: true
      t.string :status
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
