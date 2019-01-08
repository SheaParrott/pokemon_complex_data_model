Rails.application.routes.draw do

  namespace :api do
    get 'pokemon/index'
  end
  namespace :api do
    get 'regions/index'
  end
  namespace :admin do
    resources :pokemon
    resources :regions
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
