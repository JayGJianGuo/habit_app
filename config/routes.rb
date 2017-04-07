Rails.application.routes.draw do
  resources :habit_lists do
    resources :record_days do
      member do
        patch :complete
      end
    end
  end

  root "habit_lists#index"
end
