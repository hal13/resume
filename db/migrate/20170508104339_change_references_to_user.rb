class ChangeReferencesToUser < ActiveRecord::Migration[5.0]
  def change
    remove_foreign_key :user_competencies, :users
    remove_reference :user_competencies, :user, index: true
    # remove_foreign_key :user_skills, :users
    remove_reference :user_skills, :user, index: true
    remove_foreign_key :user_certificates, :users
    remove_reference :user_certificates, :user, index: true
    remove_foreign_key :user_careers, :users
    remove_reference :user_careers, :user, index: true
    remove_foreign_key :user_searches, :users
    remove_reference :user_searches, :user, index: true
    
    add_reference :user_competencies, :user_resume, index: true, foreign_key: true, after: :id
    add_reference :user_skills, :user_resume, index: true, foreign_key: true, after: :id
    add_reference :user_certificates, :user_resume, index: true, foreign_key: true, after: :id
    add_reference :user_careers, :user_resume, index: true, foreign_key: true, after: :id
    add_reference :user_searches, :user_resume, index: true, foreign_key: true, after: :id
  end
end
