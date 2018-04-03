Rails.application.routes.draw do
  get 'movie_details/show'

  get '/search/index'
  get '/search/show'

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match ':controller(/:action(/:id))(.:format)', via: [:get, :post]

end
