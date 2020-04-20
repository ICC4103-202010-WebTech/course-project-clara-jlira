class CreateEventdates < ActiveRecord::Migration[6.0]
  def change
    create_table :eventdates do |t|
      t.datetime :event_date

      t.timestamps
    end
  end
end
