# == Schema Information
#
# Table name: user_skills
#
#  id             :integer          not null, primary key
#  skill_id       :integer          default(0), not null
#  skill_level    :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  user_resume_id :integer
#

require 'rails_helper'

RSpec.describe UserSkill, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
