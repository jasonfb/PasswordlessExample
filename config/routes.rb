Rails.application.routes.draw do
  mount Sidekiq::Web => "/sidekiq" 

  passwordless_for :users
  root to: "welcome#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html


  resources :secret_things, only: :index
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
end
