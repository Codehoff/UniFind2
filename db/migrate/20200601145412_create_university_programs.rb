class CreateUniversityPrograms < ActiveRecord::Migration[6.0]
  def change
    create_table :university_programs do |t|

      t.timestamps
    end
  end
end
