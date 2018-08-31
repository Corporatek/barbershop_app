# frozen_string_literal: true

Rails.application.routes.draw do
  resources :appointments, except: %i[new edit]
  resources :barbers, except: %i[edit]
  # RESTful routes
  resources :examples, except: %i[new edit]
  resources :users, only: %i[index show update]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'

  # Apppointment custom routes
   post '/appointments' => 'appointments#create'
   get '/appointments/:id' =>'appointments#show'
   delete '/appointments/:id' => 'appointments#destroy'
   patch '/appointments/:id' => 'appointments#edit'

  # Barber custom routes
   post '/barber' => 'barbers#create'
   get '/barbers' =>'barbers#index'
   get '/barbers/:id' =>'barbers#show'
   delete '/barbers/:id' => 'barbers#destroy'
   patch '/barbers/:id/edit' => 'barbers#edit'

  # Example custome routes
  post '/examples' => 'examples#create'
  get '/examples/:id' => 'examples#show'

end

