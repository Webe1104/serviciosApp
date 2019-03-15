Rails.application.routes.draw do
  resources :items do
  	collection { post :import}
  end
  resources :areas do
  	collection { post :import}
  end
  resources :catalogs do
  	collection { post :import}
  end
  root to: 'items#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
