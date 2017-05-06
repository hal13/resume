Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations",
    confirmations: "users/confirmations",
    passwords: "users/passwords",
    unlocks: "users/unlocks"
  }
  
  devise_scope :user do 
    post 'users/sign_up/confirm' => 'users/registrations#confirm'
    post 'users/sign_up/complete' => 'users/registrations#complete'
  end
  
  namespace :user_admin do
    get '/' => 'homes#index'
  end

  root 'home#index'

end
