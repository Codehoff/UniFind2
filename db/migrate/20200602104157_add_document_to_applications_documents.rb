class AddDocumentToApplicationsDocuments < ActiveRecord::Migration[6.0]
  def change
    add_reference :applications_documents, :document, null: false, foreign_key: true
  end
end
