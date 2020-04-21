class AddUserToMessage < ActiveRecord::Migration[6.0]
  def change
    add_reference :messages, :User, null: true, foreign_key: true
  end
end
