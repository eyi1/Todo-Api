Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # scope module: :v1, constraints: ApiVersion.new('v1', true) do
  #   resources :todos do
  #     resources :items
  #   end
  # end
  # scope module: :v2, constraints: ApiVersion.new('v2') do
  #   resources :todos, only: :index
  # end
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

end
