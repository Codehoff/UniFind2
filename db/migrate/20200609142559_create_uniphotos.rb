class CreateUniphotos < ActiveRecord::Migration[6.0]
  def change
    create_table :uniphotos do |t|
      t.string :photo_url, array: true
      t.string :logo_url
      t.references :universities_program, null: false, foreign_key: true

      t.timestamps
    end
  end
end
