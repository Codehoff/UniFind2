class AddUniversitiesProgramsDocumentToPrograms < ActiveRecord::Migration[6.0]
  def change
    add_reference :programs, :universities_programs_document, foreign_key: true
  end
end
