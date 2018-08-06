# frozen_string_literal: true

Rails.application.routes.draw do
  resources :appointments, except: %i[new edit]
  resources :barbers, except: %i[new edit]
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
   # get '/appointments/for_user/:id' => 'appointments#show_all_for_current_user'
   # get '/appointments/for_barber/:id' => 'appointments#show_all_for_barber'
   delete '/appointments/:id' => 'appointments#destroy'
   patch '/appointments/:id/edit' => 'appointments#update'

  # Barber custom routes
  # post '/barbers' => 'barbers#create'
  get '/barbers/:id' =>'barbers#show'
  get '/barbers/' => 'users#show_barber'
   delete '/barbers/:id' => 'barbers#destroy'
   patch '/barbers/:id/edit' => 'barbers#edit'

  # Example custome routes
  post '/examples' => 'examples#create'
  get '/examples/:id' => 'examples#show'

end

