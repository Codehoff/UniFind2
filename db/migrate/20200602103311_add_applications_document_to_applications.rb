class AddApplicationsDocumentToApplications < ActiveRecord::Migration[6.0]
  def change
    add_reference :applications, :applications_document, null: false, foreign_key: true
  end
end
