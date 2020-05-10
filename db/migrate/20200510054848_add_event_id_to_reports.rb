class AddEventIdToReports < ActiveRecord::Migration[6.0]
  def change
    add_column :reports, :event_id, :integer
  end
end
