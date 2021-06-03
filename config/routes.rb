Rails.application.routes.draw do
  root 'home#about'
  
  get '/contacts', to: 'contacts#new'
  post '/contacts', to: 'contacts#create'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
