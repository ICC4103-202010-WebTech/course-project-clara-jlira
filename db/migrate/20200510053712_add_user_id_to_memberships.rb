class AddUserIdToMemberships < ActiveRecord::Migration[6.0]
  def change
    add_column :memberships, :user_id, :integer, foreign_key: true
  end
end
