class AddEventIdToInvitation < ActiveRecord::Migration[6.0]
  def change
    add_reference :invitations, :Event, null: true, foreign_key: true
  end
end
