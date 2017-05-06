class UserCareer < ApplicationRecord
	belongs_to :users

	@@position_name = { 1=>"OP",2=>"PG",3=>"SE",4=>"SA",5=>"SC",6=>"PL",7="PM",0="N/A" }

	def self.getPosition ( position )
		return @@position_name{position.to_i}
	end
end
