class AddUniversitiesProgramToUniversities < ActiveRecord::Migration[6.0]
  def change
    add_reference :universities, :universities_program, foreign_key: true
  end
end
