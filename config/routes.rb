Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  # get '/books', to: 'books#index'

  resources :books, :only => [:index, :show, :new, :create] do
    resources :reviews, :only => [:new, :create]
  end
  resources :authors, :only => [:show]
  resources :users, :only => [:new, :show, :create, :index]
end
