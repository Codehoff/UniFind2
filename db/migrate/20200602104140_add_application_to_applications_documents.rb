class AddApplicationToApplicationsDocuments < ActiveRecord::Migration[6.0]
  def change
    add_reference :applications_documents, :application, foreign_key: true
  end
end
