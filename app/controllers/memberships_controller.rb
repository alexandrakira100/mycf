class MembershipsController < ApplicationController

  def new
    @fund = Fund.find(params[:fund_id])
    @membership = Membership.new
  end

  def create
    @membership = Membership.new(membership_params)
    @fund = Fund.find(params[:fund_id])
    user = get_user(params[:email])
    @membership.user = user
    @membership.fund = @fund
    if @membership.save
      # TODO: do we email here?
      redirect_to fund_path(@fund)
    else
      flash[:alert] = "Membership Not Created"
      render "new"
    end
  end

  def destroy
    @membership.destroy
    redirect_to fund_path(@fund)
  end

  private

  def membership_params
    params.require(:membership).permit(:user_id, :fund_id, :allocation_share)
  end

  def get_user(email)
    user = User.find_by(email: email)
    if user.nil?
      user = User.create(
        email: email,
        name: email.split('@').first,
        password: rand(10 ** 6)
      )
    end
    return user
  end

end
