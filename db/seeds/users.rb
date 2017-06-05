1.upto(1000) do |n|
  User.create!(
    email: "example_#{n}@gmail.com",
    password: "resume_test",
    sign_in_count: 0,
    confirmed_at: DateTime.now,
    user_name: "hal#{n}",
    nick_name: "hal#{n}",
    company_name: "",
    education: "",
    gender: rand(0..1),
    age: rand(0..6),
    user_type: rand(0..1)
    )
end