class AddPictureToUniversitiesPrograms < ActiveRecord::Migration[6.0]
  def change
    add_column :universities_programs, :picture, :string
  end
end
