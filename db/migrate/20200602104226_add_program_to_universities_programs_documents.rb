class AddProgramToUniversitiesProgramsDocuments < ActiveRecord::Migration[6.0]
  def change
    add_reference :universities_programs_documents, :program, foreign_key: true
  end
end
