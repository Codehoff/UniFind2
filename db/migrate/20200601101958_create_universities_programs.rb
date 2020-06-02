class CreateUniversitiesPrograms < ActiveRecord::Migration[6.0]
  def change
    create_table :universities_programs do |t|
      t.timestamps
    end
  end
end
