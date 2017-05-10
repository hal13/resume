class UserAdmin::UserResumesController < UserAdmin::Base
  # before_action :user_resume_find

  def show
  end

  def new
    @user_resume = UserResume.new
  end

  def create
    @user_resume = UserResume.new(user_resume_params)

    if @user_resume.save
      # @user_resume.create
      redirect_to user_admin_user_resume_path(current_user.id)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end
  
  def confirm
    @user_resume = UserResume.new()
  end
  
  private
  
  def user_resume_find
    @user = User.find(current_user.id)
  end
  
  def user_resume_params
    params.require(:user_resume).permit(
      UserResume::ALLOW_PARAMS,
      user_skills_attributes: UserSkill::NESTED_ALLOW_PARAMS
    )
  end
end
