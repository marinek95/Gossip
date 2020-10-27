Rails.application.routes.draw do
  get '/team', to: 'static_pages#index'
  get '/contact', to: 'static_pages#contact'
  get '/home', to: 'static_pages#home'

end
