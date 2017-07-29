Rails.application.routes.draw do
  resources :rentals do
    resources :bookings
  end
  root 'rentals#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
