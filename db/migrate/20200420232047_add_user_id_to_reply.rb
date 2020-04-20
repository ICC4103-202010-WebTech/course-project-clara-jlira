class AddUserIdToReply < ActiveRecord::Migration[6.0]
  def change
    add_reference :replies, :User, null: true, foreign_key: true
  end
end
