Rails.application.routes.draw do

  root "pages#homepage"
  get "/pages/:page" => "pages#show"
  get "/postts/:postt" => "postts#index"

  resources :posts
  resources :pages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
