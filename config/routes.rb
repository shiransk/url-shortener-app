Rails.application.routes.draw do

#User routs
get '/signup', to: 'users#new'
post '/signup', to: 'users#create'

#Sessions controller

get '/login', to: 'sessions#new'
post '/login', to: 'sessions#create'
get '/logout', to: 'sessions#destroy' 

end
