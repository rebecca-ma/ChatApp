class MessagesController < ApplicationController
  def new
    @message = Message.new
    @channel = Channel.find(params[:id])
  end

  def create
    @message = Message.new(message_params)
    @channel = Channel.find(params[:id])
    if @message.save
      redirect_to channel_path(@channel)
    else
      render 'new'
    end
  end

  private
    def message_params
      params.require(:message).permit(:content, :user_id, :channel_id)
    end
end
