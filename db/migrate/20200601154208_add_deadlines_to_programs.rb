class AddDeadlinesToPrograms < ActiveRecord::Migration[6.0]
  def change
    add_reference :programs, :deadlines, null: false, foreign_key: true
  end
end
