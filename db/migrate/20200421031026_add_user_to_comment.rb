class AddUserToComment < ActiveRecord::Migration[6.0]
  def change
    add_reference :comments, :User, null: true, foreign_key: true
  end
end
