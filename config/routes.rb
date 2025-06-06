Rails.application.routes.draw do
    resources :servers do
      scope module: :servers do
        resources :invite_links, only: [:show, :create]
        resources :channels do
          scope module: :channels do
            resources :messages, only: [:create]
          end
        end
      end
    end

  get "/invite/:uniq_id", to: "invitations#show"
  resources :invitations, only: [:create]
  devise_for :users
  get "dashboard/show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  root "dashboard#show"
end
