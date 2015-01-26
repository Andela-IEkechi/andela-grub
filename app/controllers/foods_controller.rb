class FoodsController < ApplicationController
  before_action :set_food, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :is_admin?

  def is_admin?
    if current_user.admin?
      true
    else
      redirect_to root_path
    end
  end

  respond_to :html

  def index
    @foods = Food.all
    respond_with(@foods)
  end

  def show
    respond_with(@food)
  end

  def new
    @food = Food.new
    respond_with(@food)
  end

  def edit
  end

  def create
    @user_admin = current_user.admin?
    if @user_admin
      @food = Food.new(food_params)
      respond_to do |format|
        if @food.save
          format.html do
            redirect_to foods_path,
                        notice: 'Food was successfully created.'
          end
        else
          format.html { render :new }
        end
      end
    else
      respond_to do |format|
        format.html { render file: "#{Rails.root}/public/401.html", status: 401, layout: false }
      end
    end
  end

  def update
    @user_admin = current_user.admin?
    if @user_admin
      respond_to do |format|
        if @food.update(food_params)
          format.html do
            redirect_to foods_path,
                        notice: 'Food was successfully updated.'
          end
        else
          format.html { render :new }
        end
      end
    else
      respond_to do |format|
        format.html { render file: "#{Rails.root}/public/401.html", status: 401, layout: false }
      end
    end
  end

  def destroy
    @user_admin = current_user.admin?
    if @user_admin
      @food.destroy
      respond_with(@food)
    else
      respond_to do |format|
        format.html { render file: "#{Rails.root}/public/401.html", status: 401, layout: false }
      end
    end
  end

  private
    def set_food
      @food = Food.find(params[:id])
    end

    def food_params
      params.require(:food).permit(:item)
    end
end
