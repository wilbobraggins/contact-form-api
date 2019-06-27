Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users

  root to: "home#index"
  
  post "user", controller: :users, action: :create

end
