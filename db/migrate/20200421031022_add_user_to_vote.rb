class AddUserToVote < ActiveRecord::Migration[6.0]
  def change
    add_reference :votes, :User, null: true, foreign_key: true
  end
end
