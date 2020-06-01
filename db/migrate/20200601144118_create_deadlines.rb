class CreateDeadlines < ActiveRecord::Migration[6.0]
  def change
    create_table :deadlines do |t|
      t.integer :phase
      t.string :date
      t.timestamps
    end
  end
end
