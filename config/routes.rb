Rails.application.routes.draw do
  get '/private', to: 'private#private'
  # get '/', to: 'public_controller#public'
  root to: 'public#public'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
