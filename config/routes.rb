Rails.application.routes.draw do
  resources :todos do
    resources :items
  end

  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
