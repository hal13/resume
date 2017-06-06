companies = %w( Google Amazon Apple GM TOYOTA NEC Panasonic)
educations = [ "MIT", "Stanford", "Harvard", "Tokyo"]

1.upto(100) do |n|
  User.create!(
    email: "example_#{n}@aiit.ac.jp",
    password: "resume_test",
    sign_in_count: 0,
    confirmed_at: DateTime.now,
    user_name: "hal#{n}",
    nick_name: "hal#{n}",
    company_name: companies[rand(companies.length)],
    education: educations[rand(educations.length)],
    gender: rand(0..1),
    age: rand(0..6),
    user_type: rand(0..1)
    )
end