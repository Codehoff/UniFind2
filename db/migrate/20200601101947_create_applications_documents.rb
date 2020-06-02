class CreateApplicationsDocuments < ActiveRecord::Migration[6.0]
  def change
    create_table :applications_documents do |t|

      t.timestamps
    end
  end
end
