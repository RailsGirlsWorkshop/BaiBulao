Rails.application.routes.draw do
  root 'bais#index'
  resources :bais
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
