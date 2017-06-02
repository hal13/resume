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

class UserSkill < ApplicationRecord
    NESTED_ALLOW_PARAMS = [:id, :skill_id, :skill_level, :_destroy]

	belongs_to :user_resume
	
    enum skill_level: { LEVEL1: 0, LEVEL2: 1, LEVEL3: 2, LEVEL4: 3, LEVEL5: 4}
end
