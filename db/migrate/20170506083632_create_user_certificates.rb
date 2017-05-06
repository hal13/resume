class CreateUserCertificates < ActiveRecord::Migration[5.0]
  def change
    create_table :user_certificates do |t|
      t.references :user, index: true, foreign_key: true
      t.string :certified_at, limit: 6, null: false
      t.string :certification_name, limit: 128, null: false
      t.string :certification_version, limit: 64
      t.string :certification_rank, limit: 64

      t.timestamps
    end
  end
end
