class AddUserIdToMembership < ActiveRecord::Migration[6.0]
  def change
    add_reference :memberships, :User, null: true, foreign_key: true
  end
end
