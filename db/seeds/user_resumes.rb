user_count = User.count

1.upto(user_count) do |n|
  user = User.find(n)
  user.build_user_resume(

    )
  user.user_resume.save
  
  # UserCompetency
  question_count = Question.count
  1.upto(question_count) do |competency_num|
    
    if competency_num == 6
      text = rand(1..9)
    elsif competency_num == 8
      text = ["命", "光", "躍", "翔", "祈", "願", "柱", "灯"].sample
    else
      answer = Answer.where(question_id: competency_num).pluck(:type_id).sample
      text = ""
    end
    
    user.user_resume.user_competencies.create!(
      question_id: competency_num,
      answer_id: answer,
      answer_text: text
      )
  end
  
  # UserCareer
  career_count = rand(2..5)
  def_date = Date.today << (12 * career_count)
  st_date = def_date
  1.upto(career_count) do |career_num|
    en_date = st_date >> 12
    st_date_str = st_date.strftime("%Y%m")
    en_date_str = en_date.strftime("%Y%m")
    user.user_resume.user_careers.create!(
      career_from: st_date_str,
      career_to: en_date_str,
      career_position: UserCareer.career_positions.values.sample,
      career_desc: ["物流システム開発", "業務システム開発", "ECサイトリニューアルプロジェクト", "商品開発"].sample,
      career_comment: ["とにかく頑張りました。", "ひたすら頑張りました。", "死んじゃいそうでした。", "死ぬ寸前でした。"].sample
      )
    st_date = en_date >> 1
  end
  
  # UserCertificate
  certification_name = ["Oracle Master", "Oracle Master", "Oracle Master"]
  certification_version = ["9i", "10g", "11g"]
  certification_rank = ["Bronze", "Silver", "Gold"]
  1.upto(rand(1..3)) do |certification_num|
    user.user_resume.user_certificates.create!(
      certified_at: (Date.today << rand(1..12)).strftime("%Y%m"),
      certification_name: certification_name[certification_num - 1],
      certification_version: certification_version[certification_num - 1],
      certification_rank: certification_rank[certification_num - 1]
      )
  end
  
  # UserSkill
  1.upto(rand(1..4)) do |skill_num|
    user.user_resume.user_skills.create!(
      skill_id: skill_num,
      skill_level: UserSkill.skill_levels.values.sample
      )
  end
end