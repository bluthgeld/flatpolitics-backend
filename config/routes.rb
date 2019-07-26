Rails.application.routes.draw do

  resources :users, :user_polls, :polls

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
