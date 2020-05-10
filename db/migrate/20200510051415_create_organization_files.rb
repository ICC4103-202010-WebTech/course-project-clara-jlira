class CreateOrganizationFiles < ActiveRecord::Migration[6.0]
  def change
    create_table :organization_files do |t|
      t.string :file_dir
      t.string :file_type

      t.timestamps
    end
  end
end
