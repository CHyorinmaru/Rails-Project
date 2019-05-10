Rails.application.routes.draw do
  get "/", to: "home#index"
  get "/users/make_admin", to: "home#make_admin"
  get "/home/login_page", to: "home#login_page"
  resources :cards

  devise_for :users

  resources :users do
    member do
      get :confirm_email
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
