skills = %w( Java Ruby PHP C C++ Python JavaScript Swift Objective-C Go )
skills.each do |skill|
  Skill.create(
    skill_set: skill
    )
end