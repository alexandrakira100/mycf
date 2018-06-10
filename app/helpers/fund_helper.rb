module FundHelper

  def user_profit_margin(fund)
    ((current_user.memberships.find_by(fund_id: fund.id).allocation_share_percentage * (fund.total_fund_value - fund.total_purchase_value)) / 100).round(2)
  end

end
