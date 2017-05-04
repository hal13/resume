Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: "users/sessions"
  }
  
  namespace :user_admin do
    get '/' => 'homes#index'
  end
end
