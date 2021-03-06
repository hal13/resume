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
	
	enum skill_level: { LEVEL1: 0, LEVEL2: 1, LEVEL3: 2, LEVEL4: 3, LEVEL5: 4 }

	
	validates :skill_id, presence: true, numericality: { only_integer: true, greater_than: 0 }
	# validates :skill_level, allow_nil: true, numericality: { only_integer: true, greater_than_or_equal: 0, less_than: 5 }
	validates :skill_level, allow_nil: true, numericality: { only_integer: true, greater_than_or_equal: 0 }

end

