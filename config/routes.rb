Rails.application.routes.draw do
  devise_for :humans
  resources :humans
  resources :dogs
  root 'dogs#index'
end
