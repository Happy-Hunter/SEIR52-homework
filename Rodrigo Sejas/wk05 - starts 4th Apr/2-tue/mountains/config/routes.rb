Rails.application.routes.draw do
  get '/mountains' => 'mountains#index'
  get '/mountains/new' => 'mountains#new', :as => :new_mountain 
  post '/mountains' => 'mountains#create'
  get '/mountains/categories' => 'mountains#categories'
  get '/mountains/:id' => 'mountains#show', :as => :mountain
  get '/mountains/:id/edit' => 'mountains#edit', :as => :edit_mountain
  post '/mountains/:id' => 'mountains#update' #Ask Joel about how this works again
  get '/mountains/:id/delete' => 'mountains#destroy', :as => :delete_mountain
end