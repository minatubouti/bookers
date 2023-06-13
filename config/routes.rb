Rails.application.routes.draw do
  # get 'books/new'
  # get 'books/index'
  # get 'books/show'
  # get 'books/edit'
   get '/top' => 'homes#top'
   root to: 'homes#top'
   resources :books, only: [:index,:new,:show,:edit,:create]
   post 'books' => 'books#create'
   get 'books' => 'books#index'
   get 'books/:id' => 'books#show'
   delete 'books/:id' => 'books#destroy', as: 'destroy_book'
   patch 'books/:id' => 'books#update', as: 'update_book'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
