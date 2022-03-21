Rails.application.routes.draw do
  namespace :api, default: { format: 'json'} do
    get 'messages', to: 'messages#index'
  end
end
