Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'assets#index'
  resources :assets, only: [:show, :index] do
    member do
      put 'buy'
    end
  end

  put "properties/:id/buy", to: 'assets#buy', as: :buy_property




  resources :houses, :controller => "assets", :type => "House", only: [:show] do
    member do
      get 'buy'
    end
  end
  resources :complex_buildings, :controller => "assets", :type => "ComplexBuilding", only: [:show] do
    member do
      put 'buy'
    end
  end
  resources :commercial_units, :controller => "assets", :type => "CommercialUnit", only: [:show] do
    member do
      put 'buy'
    end
  end

  namespace :manage do
    resources :assets
    resources :houses, :controller => "assets", :type => "House"
    resources :complex_buildings, :controller => "assets", :type => "ComplexBuilding"
    resources :commercial_units, :controller => "assets", :type => "CommercialUnit"
  end
end
