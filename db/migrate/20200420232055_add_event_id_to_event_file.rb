class AddEventIdToEventFile < ActiveRecord::Migration[6.0]
  def change
    add_reference :event_files, :Event, null: true, foreign_key: true
  end
end
