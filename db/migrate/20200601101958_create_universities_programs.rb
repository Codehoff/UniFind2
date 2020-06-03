class CreateUniversitiesPrograms < ActiveRecord::Migration[6.0]
  def change
    create_table :universities_programs do |t|
      t.integer :quota
      t.string :degree
      t.string :webpage_url
      t.string :discipline
      t.string :language
      t.integer :semesters
      t.date :deadline
      t.timestamps
    end
  end
end
