Rails.application.routes.draw do
  resources :books,only: [:new,:index,:show,:create,:destroy]
  
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.
  root to: "homes#top"
  get 'home/about' => 'homes#about',as:'about'
  
end
