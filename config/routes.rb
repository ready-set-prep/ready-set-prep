Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

<<<<<<< HEAD
get '/auth/:provider/callback', to: 'sessions#create'end
=======
   get '/aboutus'   => 'aboutus#index'
end
>>>>>>> ed1096bbb729618fb48bb2dd55b204e4874f501a
