Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: :sessions }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root to:  "landingpage#index"
  resources :landingpage
  resources :interview
  resources :reviews
  resources :user_info
  resources :amazoncart
  resources :interviewreviews
  resources :savedinterviews
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/aboutus'   => 'aboutus#index'
end
