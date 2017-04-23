Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

  get 'planes/index'
  get 'history', to: 'history#index'
  post 'takeoff', to: 'takeoff#create'


  root 'planes#index'

  mount ActionCable.server, at: '/cable'
end
