class MessagesController < ApplicationController

  def create
    @message = Message.new(message_params)
    @message.user = current_user
    @fund = Fund.find(params[:fund_id])
    @message.fund = @fund
    if @message.save
      redirect_to fund_path(@fund)
    else
      render "funds/show"
    end
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
