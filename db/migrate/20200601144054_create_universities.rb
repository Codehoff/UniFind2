class CreateUniversities < ActiveRecord::Migration[6.0]
  def change
    create_table :universities do |t|
      t.string :name
      t.string :city
      t.integer :student_amount
      t.string :institution
      t.timestamps
    end
  end
end
