class UserAdmin::Base < ApplicationController
  before_action :authenticate_user!
  
  layout "user_admin"

end