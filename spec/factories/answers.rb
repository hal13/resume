# == Schema Information
#
# Table name: answers
#
#  id          :integer          not null, primary key
#  answer_type :integer          not null
#  type_id     :integer          not null
#  answer_desc :string(64)       not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryGirl.define do
  factory :answer do
    answer_type 1
    type_id 1
    answer_desc "MyString"
  end
end
