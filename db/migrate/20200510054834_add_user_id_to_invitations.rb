class AddUserIdToInvitations < ActiveRecord::Migration[6.0]
  def change
    add_column :invitations, :user_id, :integer, foreign_key: true
  end
end
