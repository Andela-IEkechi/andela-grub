class LunchOrdersController < ApplicationController
  before_action :set_lunch_order, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  respond_to :html

  def index
    @lunch_orders = LunchOrder.where(user_id: current_user.id).limit(26).order(created_at: :desc)
    respond_with(@lunch_orders)
  end

  def show
    respond_with(@lunch_order)
  end

  def new
    @lunch_order = LunchOrder.new
    respond_with(@lunch_order)
  end

  def edit
  end

  def create
    @lunch_order = LunchOrder.new(lunch_order_params)
    respond_to do |format|
      if @lunch_order.save
        format.html do
          redirect_to lunch_orders_path,
                      notice: 'You have successfully ordered lunch.'
        end
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @lunch_order.update(lunch_order_params)
        format.html do
          redirect_to lunch_orders_path,
                      notice: 'You have successfully updated your lunch order.'
        end
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    respond_to do |format|
      if @lunch_order.destroy
        format.html do
          redirect_to lunch_orders_path,
                      notice: 'You have successfully deleted your lunch order.'
        end
      else
        format.html { render :index }
      end
    end
  end

  private
    def set_lunch_order
      @lunch_order = LunchOrder.find(params[:id])
    end

    def lunch_order_params
      params.require(:lunch_order).permit(:user_id, :menu_content_id)
    end
end
