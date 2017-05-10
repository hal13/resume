Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations",
    confirmations: "users/confirmations",
    passwords: "users/passwords",
    unlocks: "users/unlocks"
  }
  
  devise_scope :user do 
    patch "users/confirmation", to: "users/confirmations#confirm"
    get "users/confirmation/complete", to: "users/confirmations#complete"
  end
  
  namespace :user_admin do
    get '/' => 'homes#index'
    resources :user_resumes, except: [:index, :destroy], param: :user_id
    patch "user_resumes/:user_id", to: "user_resumes#confirm"
  end

  root 'home#index'

end
