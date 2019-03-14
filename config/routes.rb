Rails.application.routes.draw do
  root to: "pages#main"
  resources :posts
  resources :test_blogs
  get "test_blogs/with_title_of/:title", to: "test_blogs#with_title_of"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
