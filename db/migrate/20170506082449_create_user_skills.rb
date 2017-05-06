class CreateUserSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :user_skills do |t|
      t.references :user, index: true, freign_key: true
      t.integer :skill_id, null: false, limit: 2, default: 0
      t.integer :skill_level, limit: 2

      t.timestamps
    end
  end
end
