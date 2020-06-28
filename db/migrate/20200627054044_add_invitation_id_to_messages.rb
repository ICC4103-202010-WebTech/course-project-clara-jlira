class AddInvitationIdToMessages < ActiveRecord::Migration[6.0]
  def change
    add_column :messages, :invitation_id, :integer, foreign_key: true
  end
end

