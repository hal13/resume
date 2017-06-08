# == Schema Information
#
# Table name: user_careers
#
#  id              :integer          not null, primary key
#  career_from     :string(6)        not null
#  career_to       :string(6)        not null
#  career_position :integer          default(0), not null
#  career_desc     :string(512)      not null
#  career_comment  :string(512)      default("")
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_resume_id  :integer
#

class UserCareer < ApplicationRecord
	belongs_to :user_resume
	
	enum position: {OP: 1, PG: 2, SE: 3, SA: 4, SC: 5, PL: 6, PM: 7, None: 0}

	# @@position_name = { 1=>"OP",2=>"PG",3=>"SE",4=>"SA",5=>"SC",6=>"PL",7="PM",0="N/A" }

	# def self.getPosition ( position )
	# 	return @@position_name{position.to_i}
	# end


	validates :career_from, presence: true, length: { is: 6 } 
	validates :career_to, presence: true, length: { is: 6 } 
	validates :career_desc, presence: true, length: { within: 1..512 } 
	validates :career_position, presence: true, numericality: { only_integer: true, greater_than_or_equal: 0, less_than: 8 }
	validates :career_desc, length: { maximum: 512 } 

end

