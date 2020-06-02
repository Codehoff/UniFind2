class AddUniversitiesProgramToApplications < ActiveRecord::Migration[6.0]
  def change
    add_reference :applications, :universities_program, foreign_key: true
  end
end
