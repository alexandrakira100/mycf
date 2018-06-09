class MessagesController < ApplicationController

  def create
    @message = Message.new(message_params)
    @message.user = current_user
    @fund = Fund.find(params[:fund_id])
    @message.fund = @fund
    if @message.save
      # redirect_to fund_path(@fund)
      respond_to do |format|
        format.html { redirect_to fund_path(@fund) }
        format.js
      end
    else
      # render "funds/show"
      respond_to do |format|
        format.html { render "funds/show"}
        format.js
      end
    end
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
