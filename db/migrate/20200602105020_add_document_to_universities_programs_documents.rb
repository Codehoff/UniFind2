class AddDocumentToUniversitiesProgramsDocuments < ActiveRecord::Migration[6.0]
  def change
    add_reference :universities_programs_documents, :document, null: false, foreign_key: true
  end
end
