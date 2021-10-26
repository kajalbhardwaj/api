Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 get "/employees", to: "employees#index"

  resources :employees
  resources :users, param: :_username
 post '/auth/login', to: 'authentication#login'
  get '/*a', to: 'application#not_found'
  get "/users", to: "users#index"

end
