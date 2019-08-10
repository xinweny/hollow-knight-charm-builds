Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :builds do
    resources :combinations, only: %i[new create edit update]
  end
  resources :combinations, only: :destroy
  resources :charms, only: %i[index show]

  root to: 'builds#index'
end
