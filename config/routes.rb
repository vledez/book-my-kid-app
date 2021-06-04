Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :kids do
    resources :bookings, only: [ :new, :create ]
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
  get "/result", to: "bookings#generate"
  resources :users, only: [:show]
end
