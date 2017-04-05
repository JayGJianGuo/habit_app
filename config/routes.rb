Rails.application.routes.draw do
  resources :habit_lists

  root "habit_lists#index"
end
