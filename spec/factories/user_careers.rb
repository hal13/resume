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

FactoryGirl.define do
  factory :user_career do
    user_id 1
    career_from "MyString"
    career_to "MyString"
    career_position 1
    career_desc "MyString"
    career_comment "MyString"
  end
end
