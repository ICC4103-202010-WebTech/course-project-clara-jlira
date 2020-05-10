class AddUserIdToNotifications < ActiveRecord::Migration[6.0]
  def change
    add_column :notifications, :user_id, :integer, foreign_key: true
  end
end
