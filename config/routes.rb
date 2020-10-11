Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users do 
        resources :moods
      end
    end
  end
end
