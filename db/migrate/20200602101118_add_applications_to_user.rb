class AddApplicationsToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :applications, foreign_key: true
  end
end
