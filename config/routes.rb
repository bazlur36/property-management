Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'assets#index'
  resources :assets, only: [:show, :index] do

  end
  namespace :manage do
    resources :assets
    resources :houses, :controller => "assets", :type => "House"
    resources :complex_buildings, :controller => "assets", :type => "ComplexBuilding"
    resources :commercial_units, :controller => "assets", :type => "CommercialUnit"
  end
end
