class AddDocumentsToPrograms < ActiveRecord::Migration[6.0]
  def change
    add_reference :programs, :documents, null: false, foreign_key: true
  end
end
