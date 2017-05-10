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

FactoryGirl.define do
  factory :user_skill do
    user_id 1
    skill_id 1
    skill_level 1
  end
end
