Rails.application.routes.draw do

  get 'employees/:id' => 'enemies#show'

  namespace :api do
    namespace :v1 do
      get '/enemies' => 'enemies#index'
      post '/enemies' => 'enemies#create'
      get '/enemies/:id' => 'enemies#show'
      patch '/enemies/:id' => 'enemies#update'
      delete '/enemies/:id' => 'enemies#destroy'
    end
  end
end
