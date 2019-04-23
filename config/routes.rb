Rails.application.routes.draw do
  resources :places
  # get 'welcome/index'
  root "welcome#index"
  get 'all_places' => 'welcome#place_index', as: 'home_places'
  get 'tags/:tag', to: 'welcome#index', as: "tag"

  # resources :comments
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  resources :users
  resources :events do
    resources :comments, :except => [:index]
    resources :attendances
  end
  put 'events/:id/public' => 'events#public_event', as: 'public_event'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
