class FundsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "fund_#{params[:fund_id]}"
  end

  # def unsubscribed
  #   # Any cleanup needed when channel is unsubscribed
  # end
end
