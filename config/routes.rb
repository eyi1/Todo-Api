Rails.application.routes.draw do
  
  resources :todos, only: :index

  namespace :api do
    namespace :v1 do
      resources :todos do 
        resources :items
      end
    end
  end

  namespace :api do
    namespace :v2 do
      resources :todos do 
        resources :items
      end
    end
  end

  # scope module: :v1, constraints: ApiVersion.new('v1', true) do
  #   resources :todos do
  #     resources :items
  #   end
  # end
  # scope module: :v2, constraints: ApiVersion.new('v2') do
  #   resources :todos, only: :index
  # end

end