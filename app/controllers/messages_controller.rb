class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def create
    m = Message.create(body: params[:message][:body])
    respond_to do |format|
      format.js { render json: {message: m}}
    end
  end
end
