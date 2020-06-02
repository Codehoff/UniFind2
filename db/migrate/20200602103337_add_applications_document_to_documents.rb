class AddApplicationsDocumentToDocuments < ActiveRecord::Migration[6.0]
  def change
    add_reference :documents, :applications_document, null: false, foreign_key: true
  end
end
