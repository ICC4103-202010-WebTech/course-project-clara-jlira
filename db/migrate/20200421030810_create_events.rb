class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.string :location
      t.boolean :private
      t.boolean :organization_event

      t.timestamps
    end
  end
end