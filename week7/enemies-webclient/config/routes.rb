Rails.application.routes.draw do

  get '/enemies' => 'enemies#index'
  get '/enemies/new' => 'enemies#new'
  post '/enemies' => 'enemies#create'
  get 'enemies/:id' => 'enemies#show'
  get '/enemies/:id/edit' => 'enemies#edit'
  patch '/enemies/:id' => 'enemies#update'
  delete '/enemies/:id' => 'enemies#destroy'
  

  
end
