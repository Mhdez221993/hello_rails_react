Rails.application.routes.draw do
  namespace :api, default: { format: 'json' } do
    get 'greetings', to: 'greetings#index'
  end

  get '*page', to: 'static#index', constrains: ->(req) do
    !req.xhr? && req.format.html?
  end

  root 'static#index'
end
