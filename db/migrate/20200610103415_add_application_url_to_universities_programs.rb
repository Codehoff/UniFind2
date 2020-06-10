class AddApplicationUrlToUniversitiesPrograms < ActiveRecord::Migration[6.0]
  def change
    add_column :universities_programs, :application_url, :string
  end
end
