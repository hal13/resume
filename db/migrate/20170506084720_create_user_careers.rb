class CreateUserCareers < ActiveRecord::Migration[5.0]
  def change
    create_table :user_careers do |t|
      t.references :user, index: true, foreign_key: true
      t.string :career_from, limit: 6, null: false
      t.string :career_to, limit: 6, null: false
      t.integer :career_position, limit: 2, null: false, default: 0
      t.string :career_desc, limit: 512, null: false
      t.string :career_comment, limit: 512, null: true, default: ""

      t.timestamps
    end
  end
end
