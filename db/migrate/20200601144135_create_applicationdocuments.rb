class CreateApplicationdocuments < ActiveRecord::Migration[6.0]
  def change
    create_table :applicationdocuments do |t|
      t.string :file_url
      t.string :uploaded_at
      t.timestamps
    end
  end
end
