FactoryGirl.define do
  factory :user_search do
    user_id 1
    column_for_search "MyString"
  end
end
