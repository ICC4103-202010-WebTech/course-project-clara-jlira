class CreateNotifications < ActiveRecord::Migration[6.0]
  def change
    create_table :notifications do |t|
      t.string :notification
      t.string :notification_type

      t.timestamps
    end
  end
end
