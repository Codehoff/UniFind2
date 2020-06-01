class AddUniversityProgramToPrograms < ActiveRecord::Migration[6.0]
  def change
    add_reference :programs, :program, null: false, foreign_key: true
  end
end
