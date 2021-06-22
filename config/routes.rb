Rails.application.routes.draw do
  get '/private', to: 'private#private'
  post '/private', to: 'privatec#create'
  get '/private-scope', to: 'private#private_scoped'
  # get '/', to: 'public_controller#public'
  root to: 'public#public'

  get '/showinfo', to: 'display#index'
  get '/callapi', to: 'display#callapi'

  get '/sendinfo', to: 'token#index'
  get '/gettoken', to: 'token#test_api'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
