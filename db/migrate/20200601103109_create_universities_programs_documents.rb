class CreateUniversitiesProgramsDocuments < ActiveRecord::Migration[6.0]
  def change
    create_table :universities_programs_documents do |t|
      t.timestamps
    end
  end
end
