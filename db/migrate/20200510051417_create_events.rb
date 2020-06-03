class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.string :location
      t.string :state
      t.boolean :private_event
      t.boolean :organization_event

      t.timestamps
    end
  end
end
