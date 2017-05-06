class ChangeToUsers < ActiveRecord::Migration[5.0]
  def up
    change_column :users, :email, :string, limit: 128, null: false, default: ""
    change_column :users, :encrypted_password, :string, limit: 64, null: false, default: ""
    change_column :users, :reset_password_token, :string, limit: 64
  end
  
  def down
    change_column :users, :email, :string, null: false, default: ""
    change_column :users, :encrypted_password, :string, null: false, default: ""
    change_column :users, :reset_password_token, :string
  end
end
