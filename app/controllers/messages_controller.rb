class MessagesController < ApplicationController

  def create
    @message = Message.new(message_params)
    if @message_save
      redirect_to fund_path(@fund)
    else
      render "funds/show"
    end
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
