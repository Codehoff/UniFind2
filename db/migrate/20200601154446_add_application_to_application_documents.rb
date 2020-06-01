class AddApplicationDocumentsToApplications < ActiveRecord::Migration[6.0]
  def change
    add_reference :applications, :application_documents, null: false, foreign_key: true
  end
end
