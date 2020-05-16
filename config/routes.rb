Rails.application.routes.draw do
  devise_for :users
  devise_for :views
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts do
    resources :comments
  end
  root to: "posts#index"

  get '/about', to: "pages#about"
end
