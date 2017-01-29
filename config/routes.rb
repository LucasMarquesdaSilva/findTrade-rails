Rails.application.routes.draw do
  devise_for :users, :controllers => { :sessions => "sessions" }
  resources :products, :users_products do
    resources :comments
  end
 resources :users_account

  root to: "products#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
