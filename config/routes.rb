Rails.application.routes.draw do
  resources :institutions

  get "nova-igreja-local", to: "home#new_institution"
  post "nova-igreja-local", to: "home#create_institution"

  get 'home/index'
  root "home#index"

  get "up" => "rails/health#show", as: :rails_health_check
end
