# == Schema Information
#
# Table name: skills
#
#  id         :integer          not null, primary key
#  skill_set  :string(128)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :skill do
    skill_set "MyString"
  end
end
