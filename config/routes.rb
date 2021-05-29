Rails.application.routes.draw do
  devise_for :users
  resources :stickers, only: [:index, :new, :create, :destroy, :edit]   
  root to: "stickers#index"  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
