# == Schema Information
#
# Table name: user_searches
#
#  id                :integer          not null, primary key
#  column_for_search :string(2048)     default("")
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  user_resume_id    :integer
#

FactoryGirl.define do
  factory :user_search do
    user_id 1
    column_for_search "MyString"
  end
end
