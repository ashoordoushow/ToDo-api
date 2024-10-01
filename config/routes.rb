Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

<<<<<<< HEAD


  get "/todos" => "todos#index"
  get "/todos/:id" => "todos#show"
  post "/todos" => "todos#create"
  patch "/todos/:id" => "todos#update"
  delete "/todos/:id" => "todos#destroy"
=======
  get "users" => "users#index"
  get "users/:id" => "users#show"
  patch "/users/:id" => "users#update"
  delete "/users/:id" => "users#destroy"
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  

>>>>>>> 4b7375224a540589c559be1b0a0db682ee944665
  # Defines the root path route ("/")
  # root "posts#index"
end
