class AddUniversityInfoToUniversitiesPrograms < ActiveRecord::Migration[6.0]
  def change
    add_column :universities_programs, :university_info, :string
  end
end
