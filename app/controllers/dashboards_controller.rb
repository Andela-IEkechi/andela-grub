class DashboardsController < ApplicationController
  before_action :authenticate_user!
  before_action :is_admin?

  def is_admin?
    if current_user.admin?
      true
    else
      redirect_to root_path
    end
  end


  def show
    @breakfast_orders = BreakfastOrder.where('created_at.wday'== 'Time.now.wday')
    @lunch_orders = LunchOrder.where('created_at.wday'== 'Time.now.wday')
    @dinner_orders = DinnerOrder.where('created_at.wday'== 'Time.now.wday')
  end
end
