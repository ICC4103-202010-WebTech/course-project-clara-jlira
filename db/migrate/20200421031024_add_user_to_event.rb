class AddUserToEvent < ActiveRecord::Migration[6.0]
  def change
    add_reference :events, :User, null: true, foreign_key: true
  end
end
