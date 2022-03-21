Rails.application.routes.draw do
  namespace :api, default: { format: 'json'} do
    get 'greeting', to: 'messages#index'
  end

  get '*page', to: 'static#index', constraints: ->(req) do
    !req.xhr? && req.format.html?
  end

  root 'static#index'
end
