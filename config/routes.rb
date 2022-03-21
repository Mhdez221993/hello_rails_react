Rails.application.routes.draw do
  root 'static#index'
  namespace :api, default: { format: 'json'} do
    get 'messages', to: 'messages#index'
  end
end
