class MembershipsController < ApplicationController
  def new
    @membership = Membership.new
  end

  def create
    @membership = Membership.new(membership_params)
    if @membership_save
      redirect_to funds_path
    else
      render "funds/show"
    end
  end

  def destroy
    @membership.destroy
    redirect_to fund_path(@fund)
  end

  private

  def membership_params
    params.require(:membership).permit(:allocation_share)
  end
end
