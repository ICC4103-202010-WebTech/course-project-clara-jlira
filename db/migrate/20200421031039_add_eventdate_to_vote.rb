class AddEventdateToVote < ActiveRecord::Migration[6.0]
  def change
    add_reference :votes, :Eventdate, null: true, foreign_key: true
  end
end
