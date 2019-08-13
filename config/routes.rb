Rails.application.routes.draw do
  # all
  get 'articles', to: "articles#index", as: :articles
  # given form
  get 'articles/new', to: "articles#new", as: :new
  # add to data base
  post   "articles",          to: "articles#create"
  # one
  get 'articles/:id' , to: "articles#show", as: :article
  # given a form
  get 'articles/:id/edit', to: "articles#edit", as: :edit
  # update in database
  patch  "articles/:id",      to: "articles#update"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   #  remove a task
  delete "articles/:id" , to: "articles#destroy"
  resources :articles
end


