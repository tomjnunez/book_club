Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  # get '/books', to: 'books#index'

  resources :books, :only => [:index, :show]
  resources :authors, :only => [:show]
end
