class AddUniversitiesProgramToApplications < ActiveRecord::Migration[6.0]
  def change
    add_reference :applications, :universities_program, null: false, foreign_key: true
  end
end
