Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  get '/users/:id', to: 'home#profile', as: 'user'

  resources :hotels
  resources :reviews

  namespace :api do
    namespace :v1 do
      resources :hotels
    end
  end
end
