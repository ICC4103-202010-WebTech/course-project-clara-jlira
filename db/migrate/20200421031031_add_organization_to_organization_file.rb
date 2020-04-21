class AddOrganizationToOrganizationFile < ActiveRecord::Migration[6.0]
  def change
    add_reference :organization_files, :Organization, null: true, foreign_key: true
  end
end
