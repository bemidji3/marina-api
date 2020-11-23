Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :marinas do
        resources :slips, only: [:index, :update] do
          resources :boats
        end
      end
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
