class UserAdmin::HomesController < UserAdmin::Base
  def index
    ###
    @user_resume = UserResume.find(current_user.id)
    @user_certificates = UserCertificate.find(current_user.id)
    @user_competencies = UserCompetency.find(current_user.id)
    @user_careers = UserCareer.find(current_user.id)
    @user_skills = UserSkill.find(current_user.id)
  end
end