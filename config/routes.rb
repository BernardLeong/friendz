Rails.application.routes.draw do
  
  
  devise_for :users
  # match 'users/:id' => 'users/show' , via: :get
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "posts#index"

  resources :posts

  namespace :admin do
    resources :posts
    root "posts#index"
  end
  

end
