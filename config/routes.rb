Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: "login", sign_out: "logout", sign_up: "register", edit: "account/edit" }
  root to: "pages#main"
  resources :posts do
    member do
      get :toggle_status
    end
  end
  resources :test_blogs
  get "test_blogs/with_title_of/:title", to: "test_blogs#with_title_of"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
