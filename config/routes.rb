Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root to:  "landingpage#index"

get '/auth/:provider/callback', to: 'sessions#create'end
get '/aboutus'   => 'aboutus#index'
end
