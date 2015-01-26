class BreakfastOrdersController < ApplicationController
  before_action :set_breakfast_order, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  respond_to :html

  def index
    @breakfast_orders = BreakfastOrder.where(user_id: current_user.id).limit(26).order(created_at: :desc)
    respond_with(@breakfast_orders)
  end

  def show
    respond_with(@breakfast_order)
  end

  def new
    @breakfast_order = BreakfastOrder.new
    respond_with(@breakfast_order)
  end

  def edit
  end

  def create
    @breakfast_order = BreakfastOrder.new(breakfast_order_params)
    respond_to do |format|
      if @breakfast_order.save
        format.html do
          redirect_to breakfast_orders_path,
                      notice: 'You have successfully ordered breakfast.'
        end
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @breakfast_order.update(breakfast_order_params)
        format.html do
          redirect_to breakfast_orders_path,
                      notice: 'You have successfully updated your breakfast order.'
        end
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    respond_to do |format|
      if @breakfast_order.destroy
        format.html do
          redirect_to breakfast_orders_path,
                      notice: 'You have successfully deleted your breakfast order.'
        end
      else
        format.html { render :index }
      end
    end
  end

  private
    def set_breakfast_order
      @breakfast_order = BreakfastOrder.find(params[:id])
    end

    def breakfast_order_params
      params.require(:breakfast_order).permit(:user_id, :menu_content_id)
    end
end
