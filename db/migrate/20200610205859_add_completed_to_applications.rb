class AddCompletedToApplications < ActiveRecord::Migration[6.0]
  def change
    add_column :applications, :completed, :boolean, default: false
  end
end
