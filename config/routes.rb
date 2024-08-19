Rails.application.routes.draw do

devise_for :admin, skip: [:registrations, :password], controllers: {
    sessions: 'admin/sessions'
}
namespace :admin do
  get 'dashboards', to: 'dashboards#index'
  resources :users, only: [:destroy] 
end

scope module: :public do
  
    devise_for :users
    root to: "homes#top"
    
    get 'homes/about' => 'homes#about', as: 'about'
    get 'homes/top' => 'homes#top' 
    resources :posts, only: [:new, :create, :index, :show, :destroy] do 
      resources :comments, only: [:create, :destroy]
    end
    resources :users, only: [:show, :edit, :update, :destroy] do
      resources :posts, only: [:index]
    end
    get '/users/:name', to: 'users#show' 
    get '/users/:user_name/edit', to: 'users#edit'
 end
 
end
