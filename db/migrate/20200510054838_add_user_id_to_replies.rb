class AddUserIdToReplies < ActiveRecord::Migration[6.0]
  def change
    add_column :replies, :user_id, :integer, foreign_key: true
  end
end
