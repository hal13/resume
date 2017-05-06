class CreateUserCompetencies < ActiveRecord::Migration[5.0]
  def change
    create_table :user_competencies do |t|
      t.references :user,  index: true, foreign_key: true
      t.integer :question_id, null: false, limit: 2
      t.integer :answer_id, null: true, limit: 2
      t.string :answer_text, null: true, limit: 64

      t.timestamps
    end
  end
end
