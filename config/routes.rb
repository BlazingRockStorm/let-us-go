Rails.application.routes.draw do
  resources :places
  # get 'welcome/index'
  root "welcome#index"
  get 'all_places' => 'welcome#place_index', as: 'home_places'
  get 'terms' => 'welcome#terms', as: 'terms'
  get 'tags/:tag', to: 'welcome#index', as: "tag"
  get 'age/:age' => 'welcome#index', as: 'age'

  # resources :comments
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks', registrations: 'registrations'
  }

  resources :users
  resources :events do
    resources :comments, :except => [:index]
    resources :attendances do
      member do
        get :approve, :decline, :pay
      end
    end
  end
  resources :searches
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
