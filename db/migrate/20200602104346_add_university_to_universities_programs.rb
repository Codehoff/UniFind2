class AddUniversityToUniversitiesPrograms < ActiveRecord::Migration[6.0]
  def change
    add_reference :universities_programs, :university, foreign_key: true
  end
end
