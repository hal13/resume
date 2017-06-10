companies = %w( Google Amazon Apple GM TOYOTA NEC Panasonic)
educations = [ "MIT", "Stanford", "Harvard", "Tokyo"]

1.upto(50) do |n|
  User.create!(
    email: "example_#{n}@aiit.ac.jp",
    password: "resume_test",
    sign_in_count: 0,
    confirmed_at: DateTime.now,
    user_name: "hal#{n}",
    nick_name: "hal#{n}",
    company_name: companies.sample,
    education: educations.sample,
    gender: User.genders.values.sample,
    age: User.ages.values.sample,
    user_type: User.user_types.values.sample
    )
end