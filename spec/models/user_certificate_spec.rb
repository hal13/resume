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

require 'rails_helper'

RSpec.describe UserCertificate, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
