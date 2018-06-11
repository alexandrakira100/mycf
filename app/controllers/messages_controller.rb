class MessagesController < ApplicationController

  def create
    @new_message = Message.new(message_params)
    @new_message.user = current_user
    @fund = Fund.find(params[:fund_id])
    @new_messages = @fund.messages
    @new_message.fund = @fund
    if @new_message.save
      # redirect_to fund_path(@fund)
      ActionCable.server.broadcast("fund_#{@fund.id}", {
        message: @message.to_json
      })
      @message = Message.new(user: current_user)
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

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
