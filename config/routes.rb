Rails.application.routes.draw do
  resources :habit_lists do
    resources :record_days
  end

  root "habit_lists#index"
end
