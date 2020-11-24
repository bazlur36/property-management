Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :assets, only: [:show, :index] do

  end
  namespace :manage do
    resources :assets
    resources :houses, :controller => "assets", :type => "House"
    resources :complex_buildings, :controller => "assets", :type => "ComplexBuilding"
  end
end
