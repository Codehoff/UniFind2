class AddPhotoUrlsToUniversities < ActiveRecord::Migration[6.0]
  def change
    add_column :universities, :photo_urls, :string, array: true, default: []
  end
end
