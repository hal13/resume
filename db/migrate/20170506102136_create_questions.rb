class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :question_desc, limit: 128, null: false
      t.references :answer, index: true, foreign_key: {name: 'answer_type'}

      t.timestamps
    end
  end
end
