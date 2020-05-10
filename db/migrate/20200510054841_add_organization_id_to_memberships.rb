class AddOrganizationIdToMemberships < ActiveRecord::Migration[6.0]
  def change
    add_column :memberships, :organization_id, :integer, foreign_key: true
  end
end
