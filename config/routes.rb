Rails.application.routes.draw do

devise_for :users
root to: "homes#top"

get 'homes/about' => 'homes#about', as: 'about'
get 'homes/top' => 'homes#top' 
resources :posts, only: [:new, :create, :index, :show, :destroy] do 
  resources :post_comments, only: [:create]
end
resources :users, only: [:show, :edit, :update, :destroy]
get '/users/:name', to: 'users#show' 
get '/users/:user_name/edit', to: 'users#edit'
  
end
