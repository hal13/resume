class CreateUserSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :user_searches do |t|
      t.references :user, index: true, foreign_key: true
      t.string :column_for_search, limit: 2048, default: ""

      t.timestamps
    end
  end
end
