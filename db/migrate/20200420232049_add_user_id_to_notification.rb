class AddUserIdToNotification < ActiveRecord::Migration[6.0]
  def change
    add_reference :notifications, :User, null: true, foreign_key: true
  end
end
