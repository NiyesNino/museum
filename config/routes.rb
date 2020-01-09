Rails.application.routes.draw do
  resources :vgs

root to: "vgs#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end