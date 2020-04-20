class AddUserIdToReport < ActiveRecord::Migration[6.0]
  def change
    add_reference :reports, :User, null: true, foreign_key: true
  end
end
