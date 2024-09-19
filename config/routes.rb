Rails.application.routes.draw do
  devise_for :admin, skip: [:registrations, :password], controllers: {
    sessions: 'admin/sessions'
  }

  namespace :admin do
    get 'dashboards', to: 'dashboards#index'
    resources :users, only: [:destroy]
    resources :posts, only: [:index, :show, :destroy, :edit] 
    resources :comments, only: [:index, :destroy]
    resources :groups, only: [:index, :destroy]
  end

  scope module: :public do
    devise_for :users, controllers: {
      sessions: 'public/sessions',
      registrations: 'public/registrations', 
      passwords: 'public/passwords'
    }
  
    root to: "homes#top"
  
    get 'homes/about' => 'homes#about', as: 'about'
    get 'homes/top' => 'homes#top'
    get 'searches', to: 'searches#search', as: 'search' 
    get '/users/check', to: 'users#check', as: 'users_check'
    patch '/users/withdraw', to: 'users#withdraw', as: 'withdraw_user'

    resources :groups, only: [:new, :create, :index, :show, :destroy, :edit, :update] do
      resource :permits, only: [:create, :destroy] 
      resource :group_memberships, only: [:create, :destroy]
      get "join" => "groups#join"
    end
    get "groups/:id/permits", to: "groups#permits", as: :permits
    
    resources :posts, only: [:new, :create, :index, :show, :destroy, :edit, :update] do
      resources :comments, only: [:create, :destroy]
      resource :likes, only: [:create, :destroy]
      collection do
        get 'tag_search', to: 'searches#search'
      end
    end

    get '/users/:name', to: 'users#show', as: 'user_show_by_name'
    get '/users/:user_name/edit', to: 'users#edit', as: 'edit_user_by_name'
   
    resources :users, only: [:show, :edit, :update, :destroy] do
      resources :posts, only: [:index]
    end
  end
end
