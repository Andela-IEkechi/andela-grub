class DinnerOrdersController < ApplicationController
  before_action :set_dinner_order, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  respond_to :html

  def index
    @dinner_orders = DinnerOrder.where(user_id: current_user.id).limit(26).order(created_at: :desc)
    respond_with(@dinner_orders)
  end

  def show
    respond_with(@dinner_order)
  end

  def new
    @dinner_order = DinnerOrder.new
    respond_with(@dinner_order)
  end

  def edit
  end

  def create
    @dinner_order = DinnerOrder.new(dinner_order_params)
    respond_to do |format|
      if @dinner_order.save
        format.html do
          redirect_to dinner_orders_path,
                      notice: 'You have successfully ordered dinner.'
        end
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @dinner_order.update(dinner_order_params)
        format.html do
          redirect_to dinner_orders_path,
                      notice: 'You have successfully updated your dinner order.'
        end
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    respond_to do |format|
      if @dinner_order.destroy
        format.html do
          redirect_to dinner_orders_path,
                      notice: 'You have successfully deleted your dinner order.'
        end
      else
        format.html { render :index }
      end
    end
  end

  private
    def set_dinner_order
      @dinner_order = DinnerOrder.find(params[:id])
    end

    def dinner_order_params
      params.require(:dinner_order).permit(:user_id, :menu_content_id)
    end
end
