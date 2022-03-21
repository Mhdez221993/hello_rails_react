class Api::MessagesController < ApplicationController
  def index
    render json: Message.order('RANDOM()').limit(1)
  end
end
