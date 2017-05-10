# == Schema Information
#
# Table name: user_resumes
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UserResume < ApplicationRecord
	ALLOW_PARAMS = [:user_id]
	
	belongs_to :user
	has_many :user_competencies, inverse_of: :user_resume, dependent: :destroy
	has_many :user_skills, inverse_of: :user_resume, dependent: :destroy
	has_many :user_certificates, inverse_of: :user_resume, dependent: :destroy
	has_many :user_careers, inverse_of: :user_resume, dependent: :destroy
	has_many :user_searches, inverse_of: :user_resume, dependent: :destroy
	accepts_nested_attributes_for :user_competencies, allow_destroy: true
	accepts_nested_attributes_for :user_skills, reject_if: :all_blank, allow_destroy: true
	accepts_nested_attributes_for :user_certificates, allow_destroy: true
	accepts_nested_attributes_for :user_careers, allow_destroy: true
	accepts_nested_attributes_for :user_searches, allow_destroy: true
end
