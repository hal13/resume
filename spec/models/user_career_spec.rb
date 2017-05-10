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

require 'rails_helper'

RSpec.describe UserCareer, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
