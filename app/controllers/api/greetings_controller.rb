class Api::GreetingsController < ApplicationController
  def index
    render json: {
      greeting: Greeting.order('RANDOM()').first.message
    }.to_json
  end
end
