class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email_address, null: false
      t.string :password_digest, null: false 
      t.string :session_token, null: false 

      t.timestamps
    end
    add_index :users, :session_token
    add_index :users, :email_address, unique: true 
  end
end
