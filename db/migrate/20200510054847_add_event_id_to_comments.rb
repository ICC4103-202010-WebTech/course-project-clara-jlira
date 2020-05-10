class AddEventIdToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :event_id, :integer
  end
end
