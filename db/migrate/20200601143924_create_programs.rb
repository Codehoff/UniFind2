class CreatePrograms < ActiveRecord::Migration[6.0]
  def change
    create_table :programs do |t|
      t.string :name
      t.integer :quota
      t.string :degree
      t.string :webpage_url
      t.string :discipline
      t.string :language
      t.integer :semesters
      t.string :deadline
      t.timestamps
    end
  end
end
