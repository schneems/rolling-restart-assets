Rails.application.routes.draw do

  resources :rolling_things
  root "rolling_things#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
