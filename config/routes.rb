Rails.application.routes.draw do
  get '/private', to: 'private#private'
  # get '/', to: 'public_controller#public'
  root to: 'public#public'

  get '/showinfo', to: 'display#index'

  get '/sendinfo', to: 'token#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
