Rails.application.routes.draw do
  namespace :api, default: { format: 'json' } do
    get 'greetings', to: 'greetings#index'
  end

  root 'static#index'
end
