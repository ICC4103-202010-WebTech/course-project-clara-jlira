class AddInvitationIdToVote < ActiveRecord::Migration[6.0]
  def change
    add_reference :votes, :Invitation, null: true, foreign_key: true
  end
end
