class AddProgramToApplications < ActiveRecord::Migration[6.0]
  def change
    add_reference :applications, :program, null: false, foreign_key: true
  end
end
