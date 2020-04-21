class AddEventToEventdate < ActiveRecord::Migration[6.0]
  def change
    add_reference :eventdates, :Event, null: true, foreign_key: true
  end
end
