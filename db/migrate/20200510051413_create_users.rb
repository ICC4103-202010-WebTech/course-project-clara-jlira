class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :password
      t.string :email
      t.numeric :phone
      t.boolean :admin
      t.string :bio

      t.timestamps
    end
  end
end
