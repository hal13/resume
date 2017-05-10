class Users::ConfirmationsController < Devise::ConfirmationsController
  # GET /resource/confirmation/new
  def new
    super
  end

  # POST /resource/confirmation
  def create
    super
  end

  # GET /resource/confirmation?confirmation_token=abcdef
  def show
    self.resource = resource_class.find_by(confirmation_token: params[:confirmation_token])
    super if resource.nil? || resource.confirmed?
  end

  # PATCH /resource/confirmation
  def confirm
    confirmation_token = params[resource_name][:confirmation_token]
    # self.resource = resource_class.find_by!(confirmation_token: confirmation_token)
    
    @user = User.find_by(confirmation_token: confirmation_token)
    @user.attributes = confirmation_params
    
    if params[:commit] == "戻る"
      render :show
      return
    end
    
    unless @user.valid?
      render :show
      return
    end
    
    if params[:commit] == "登録する"
      if @user.save
        redirect_to users_confirmation_complete_path
      else
        render :show
      end
    elsif params[:commit] == "確認する"
      render :confirm
    end

  end
  
  def complete
    # confirmation_token = params[resource_name][:confirmation_token]
    # self.resource = resource_class.find_by!(confirmation_token: confirmation_token)

    # if resource.update(confirmation_params)
    #   self.resource = resource_class.find_by(confirmation_token: confirmation_token)
    #   set_flash_message :notice, :confirmed
    #   # sign_in_and_redirect resource_name, resource
    #   sign_in_and_redirect users_confirmation_complete
    # else
    #   render :show
    # end

  end

  protected

  # The path used after resending confirmation instructions.
  def after_resending_confirmation_instructions_path_for(resource_name)
    super(resource_name)
  end

  # The path used after confirmation.
  def after_confirmation_path_for(resource_name, resource)
    super(resource_name, resource)
  end
  
  def confirmation_params
    params.require(resource_name).permit(
      :password,
      :password_confirmation,
      :confirmation_token,
      :confirmed_at,
      :user_name,
      :nick_name,
      :family_name,
      :given_name,
      :phone_number,
      :company_name,
      :education,
      :age,
      :gender,
      :residential_area,
      :user_comment,
      :user_type,
      :visible
    )
  end
end
