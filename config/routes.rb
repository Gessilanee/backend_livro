Rails.application.routes.draw do
  resources :livros
  resources :autores
  resources :users
  post '/auth' => 'auth#login'

end