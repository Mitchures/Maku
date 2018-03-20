Rails.application.routes.draw do
  get '/search/search'

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match ':controller(/:action(/:id))(.:format)', via: [:get, :post]

end
