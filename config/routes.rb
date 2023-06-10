Rails.application.routes.draw do
  # get 'books/new'
  # get 'books/index'
  # get 'books/show'
  # get 'books/edit'
   get '/top' => 'homes#top'
   root to: 'homes#top'
   resources :books, only: [:index,:new,:show,:edit]
   post 'books' => 'books#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
