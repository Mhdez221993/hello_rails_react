class Api::GreetingsController < ApplicationController
  def index
    render json: { :greeting => Greeting.order('RANDOM()').first.message }
  end
end
