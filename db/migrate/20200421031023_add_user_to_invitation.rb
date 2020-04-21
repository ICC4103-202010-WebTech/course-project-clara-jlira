class AddUserToInvitation < ActiveRecord::Migration[6.0]
  def change
    add_reference :invitations, :User, null: true, foreign_key: true
  end
end
