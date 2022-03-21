class Api::MessagesController < ApplicationController
  def index
    message = Message.order(Arel.sql('RANDOM()')).first
    render json: { message: message.greeting }
  end
end
