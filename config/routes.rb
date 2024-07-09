Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  get "/liquors", to: "liquors#index"
  get"/liquors/:id", to: "liquors#show"

  get "/liquor_distilleries", to: "liquor_distilleries#index"
  get "/liquor_distilleries/:id", to: "liquor_distilleries#show"
  get "/liquor_distilleries/:id/liquors", to: "liquor_distillery_liquors#index"
end
