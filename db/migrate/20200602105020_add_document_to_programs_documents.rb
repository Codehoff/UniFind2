class AddDocumentToProgramsDocuments < ActiveRecord::Migration[6.0]
  def change
    add_reference :programs_documents, :document, null: false, foreign_key: true
  end
end
