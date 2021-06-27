Rails.application.routes.draw do
  get '/private', to: 'private#index'
  post '/private', to: 'privatec#create'
  get '/private-scope', to: 'private#private_scoped'
  # get '/', to: 'public_controller#public'
  root to: 'public#public'

  get '/showinfo', to: 'display#index'
  get '/callapi', to: 'display#callapi'

  get '/gettoken', to: 'token#gettoken'
  get '/callapi', to: 'token#callapi'
  get '/testapi', to: 'token#testyourapi'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
