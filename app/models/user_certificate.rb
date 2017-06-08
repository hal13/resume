# == Schema Information
#
# Table name: user_certificates
#
#  id                    :integer          not null, primary key
#  certified_at          :string(6)        not null
#  certification_name    :string(128)      not null
#  certification_version :string(64)
#  certification_rank    :string(64)
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  user_resume_id        :integer
#

class UserCertificate < ApplicationRecord
	belongs_to :user_resume

	
	validates :certified_at, presence: true, length: { is: 6 }
	validates :certification_name, presence: true, length: { within: 1..128 }
	validates :certification_version, length: { maximum: 64 }
	validates :certification_rank, length: { maximum: 64 }

end

