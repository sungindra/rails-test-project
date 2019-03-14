Rails.application.routes.draw do
  root to: "pages#main"
  resources :posts
  resources :test_blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
