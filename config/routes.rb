Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: :sessions }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root to:  "landingpage#index"
  resources :landingpage
  resources :interview
<<<<<<< HEAD
  resources :user_info
=======
  resources :amazoncart
>>>>>>> 09c079793bfe75caf8e831e60c080a288f056f19
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/aboutus'   => 'aboutus#index'
end
