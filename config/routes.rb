Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/parks/frontPageArticles', to: 'parks#frontPage'
  get '/parks', to: 'parks#index'
  get '/parks/:parkCode', to: 'parks#show'
  get '/state/:state', to: 'parks#state'


end
