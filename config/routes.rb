Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :rooms, only: [:index]
      resources :users, only: [] do
        member do
          get 'bookings', to: 'users#bookings'
        end
      end

    end
  end
  resources :bookings, only: [:index, :create, :show, :new]
end
