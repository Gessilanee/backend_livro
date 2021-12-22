Rails.application.routes.draw do
  resources :livros
  resources :users
  post '/auth' => 'auth#login'

end