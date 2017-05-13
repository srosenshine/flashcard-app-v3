Rails.application.routes.draw do
  get 'welcome/index'

  resources :cards
  resources :subjects
  resources :users

  root 'welcome#index'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
