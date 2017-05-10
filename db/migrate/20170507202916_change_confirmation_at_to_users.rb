class ChangeConfirmationAtToUsers < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :confirmation_at, :confirmed_at
  end
end
