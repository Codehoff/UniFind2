class AddUniversitiesProgramToPrograms < ActiveRecord::Migration[6.0]
  def change
    add_reference :programs, :universities_program, foreign_key: true
  end
end
