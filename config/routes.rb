Rails.application.routes.draw do
  namespace :api, deafult:{format: 'json'} do
    namespace :v1 do
      resources :stickers
    end
  end
  devise_for :users
  resources :stickers, only: [:index, :new, :create, :destroy, :edit]   
  root to: "stickers#index"  
end
