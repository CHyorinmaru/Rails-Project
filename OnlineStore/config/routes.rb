Rails.application.routes.draw do
  resources :shopping_carts
  get "/", to: "home#index"
  get "login_page", to: "home#login_page"
  get "/users/make_admin", to: "home#make_admin"
  get "/add_to_cart/:id", to: "shopping_carts#add"
  resources :cards

  devise_for :users

  resources :users do
    member do
      get :confirm_email
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
