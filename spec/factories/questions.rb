# == Schema Information
#
# Table name: questions
#
#  id            :integer          not null, primary key
#  question_desc :string(128)      not null
#  answer_id     :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

FactoryGirl.define do
  factory :question do
    question_desc "MyString"
    answer_type 1
  end
end
