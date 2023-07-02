Rails.application.routes.draw do
  get 'powers/index'
  get 'powers/show'
  get 'powers/update'
  get 'heroes/index'
  get 'heroes/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
