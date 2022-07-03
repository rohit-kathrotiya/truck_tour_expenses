Rails.application.routes.draw do
  resources :truck_fleets
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "truck_fleets#index"
end
