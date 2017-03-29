Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :channels, :groups, :users

  get '/channels/:id/new_message', to: 'messages#new', as: 'new_message'
  post '/channels/:id/new_message', to: 'messages#create'

  root 'channels#index'
end
