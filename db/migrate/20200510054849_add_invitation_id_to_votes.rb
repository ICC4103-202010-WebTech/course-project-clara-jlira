class AddInvitationIdToVotes < ActiveRecord::Migration[6.0]
  def change
    add_column :votes, :invitation_id, :integer, foreign_key: true
  end
end
