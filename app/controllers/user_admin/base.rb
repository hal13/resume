class UserAdmin::Base < ApplicationController
  before_action :authenticate_user!

end