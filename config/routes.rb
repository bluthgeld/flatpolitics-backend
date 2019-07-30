Rails.application.routes.draw do

  resources :users, :user_polls, :polls, :news

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
