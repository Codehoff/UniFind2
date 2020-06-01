class AddUniversityProgramToPrograms < ActiveRecord::Migration[6.0]
  def change
    add_reference :programs, :university_programs, null: false, foreign_key: true
  end
end
