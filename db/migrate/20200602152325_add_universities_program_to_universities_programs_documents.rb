# class AddUniversitiesProgramToUniversitiesProgramsDocuments < ActiveRecord::Migration[6.0]
#   def change
#     add_reference :universities_programs_documents, :universities_program, foreign_key: true
#   end
# end
class AddUniversitiesProgramToUniversitiesProgramsDocuments < ActiveRecord::Migration[6.0]
  def change
    add_reference :universities_programs_documents, :universities_program, foreign_key: true, index: { name: :my_index }
  end
end
