class AddApplicationInfoToUniversitiesPrograms < ActiveRecord::Migration[6.0]
  def change
    add_column :universities_programs, :application_info, :string
  end
end
