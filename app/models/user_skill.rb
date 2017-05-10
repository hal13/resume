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
	
    enum skill_level: { LEVEL1: 1, LEVEL2: 2, LEVEL3: 3, LEVEL4: 4, LEVEL5: 5}
    # enum skill_level: [ :LEVEL1, :LEVEL2, :LEVEL3, :LEVEL4, :LEVEL5 ]
end
