Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books
  # get '/books' => 'books#index'
  # get '/books/:id' => 'books#show'
  # put '/books/:id' => 'books#update'
  # delete '/books/:id' => 'books#destroy'
  # get '/books/:id/edit' => 'books#edit'
  # post '/books' => 'books#create'
  # get '/books/new' => 'books#new'
  get "/top/" => "books#top"
end
