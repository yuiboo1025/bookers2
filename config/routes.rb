Rails.application.routes.draw do
  devise_for :users
  resources :books,only: [:new,:index,:show,:create,:destroy,:edit,:update]
  resources :users,only: [:show,:index,:edit,:update]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.
  root to: "homes#top"
  get 'home/about' => 'homes#about',as:'about'
  
end
