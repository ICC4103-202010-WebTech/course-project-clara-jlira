class AddEventIdToComment < ActiveRecord::Migration[6.0]
  def change
    add_reference :comments, :Event, null: true, foreign_key: true
  end
end
