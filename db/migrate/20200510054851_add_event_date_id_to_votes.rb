class AddEventDateIdToVotes < ActiveRecord::Migration[6.0]
  def change
    add_column :votes, :event_date_id, :integer
  end
end
