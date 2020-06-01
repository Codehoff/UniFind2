class AddUniversityToUniversityPrograms < ActiveRecord::Migration[6.0]
  def change
    add_reference :university_programs, :university, null: false, foreign_key: true
  end
end
