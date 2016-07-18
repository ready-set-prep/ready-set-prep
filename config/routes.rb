Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root to:  "landingpage#index"
  resources :landingpage
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/aboutus'   => 'aboutus#index'
end
