class AddInvitationIdToMessageBoxes < ActiveRecord::Migration[6.0]
  def change
    add_column :message_boxes, :invitation_id, :integer, foreign_key: true
  end
end
