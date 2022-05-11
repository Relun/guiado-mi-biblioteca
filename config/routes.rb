Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "books", to: "books#index"
  post "books", to:"books#create"
  get "books/new", to:"books#new", as: "books_new"
  get "books/:id/edit", to: "books#edit", as: "books_edit"
  get "books/:id", to: "books#show", as: "book"
  patch "books/:id", to: "books#update"

  root "books#index"
  # Defines the root path route ("/")
  # root "articles#index"
end
