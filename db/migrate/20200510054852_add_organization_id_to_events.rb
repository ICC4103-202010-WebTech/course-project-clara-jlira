class AddOrganizationIdToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :organization_id, :integer, foreign_key: true
  end
end
