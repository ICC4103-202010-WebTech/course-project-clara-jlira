class AddEventIdToEventDates < ActiveRecord::Migration[6.0]
  def change
    add_column :event_dates, :event_id, :integer
  end
end
