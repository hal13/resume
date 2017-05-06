class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.integer :answer_type, limit: 2, null: false
      t.integer :type_id, limit: 2, null: false
      t.string :answer_desc, limit: 64, null: false

      t.timestamps
    end
  end
end
