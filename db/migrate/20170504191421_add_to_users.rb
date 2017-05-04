class AddToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :confirmation_token, :string, limit: 64, before: :created_at
    add_column :users, :confirmation_at, :datetime, before: :created_at
    add_column :users, :confirmation_sent_at, :datetime, before: :created_at
    add_column :users, :failed_attempts, :integer, before: :created_at
    add_column :users, :unlock_token, :string, limit: 64, before: :created_at
    add_column :users, :locked_at, :datetime, before: :created_at
    add_column :users, :user_name, :string, limit: 64, null: false, default: "", before: :created_at
    add_column :users, :nick_name, :string, limit: 64, null: false, default: "", before: :created_at
    add_column :users, :family_name, :string, limit: 64, before: :created_at
    add_column :users, :given_name, :string, limit: 64, before: :created_at
    add_column :users, :phone_number, :string, limit: 64, before: :created_at
    add_column :users, :image_file_name, :string, limit: 128, before: :created_at
    add_column :users, :image_file_url, :string, limit: 512, before: :created_at
    add_column :users, :company_name, :string, limit: 64, null: false, default: "", before: :created_at
    add_column :users, :education, :string, limit: 256, null: false, default: "", before: :created_at
    add_column :users, :age, :integer, limit: 2, default: 0, before: :created_at
    add_column :users, :gender, :integer, limit: 2, default: 0, before: :created_at
    add_column :users, :residential_area, :integer, limit: 2, default: 0, before: :created_at
    add_column :users, :user_comment, :string, limit: 512, before: :created_at
    add_column :users, :user_type, :integer, limit: 2, default: 0, before: :created_at
    add_column :users, :visible, :boolean, default: true, before: :created_at
    add_column :users, :deleted, :boolean, default: false, before: :created_at
    add_column :users, :deleted_at, :datetime, before: :created_at
    
    add_index :users, :confirmation_token,   unique: true
    add_index :users, :unlock_token,         unique: true
  end
end
