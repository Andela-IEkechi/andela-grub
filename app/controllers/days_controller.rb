class DaysController < ApplicationController
  before_action :set_day, only: [:show, :edit, :update, :destroy]
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
    @days = Day.all
    respond_with(@days)
  end

  def show
    respond_with(@day)
  end

  def new
    @day = Day.new
    respond_with(@day)
  end

  def edit
  end

  def create
    @user_admin = current_user.admin?
    if @user_admi
      @day = Day.new(day_params)
      @day.save
      respond_with(@day)
    else
      respond_to do |format|
        format.html { render file: "#{Rails.root}/public/401.html", status: 401, layout: false }
      end
    end
  end

  def update
    @user_admin = current_user.admin?
    if @user_admi
      @day.update(day_params)
      respond_with(@day)
    else
      respond_to do |format|
        format.html { render file: "#{Rails.root}/public/401.html", status: 401, layout: false }
      end
    end
  end

  def destroy
    @user_admin = current_user.admin?
    if @user_admi
      @day.destroy
      respond_with(@day)
    else
      respond_to do |format|
        format.html { render file: "#{Rails.root}/public/401.html", status: 401, layout: false }
      end
    end
  end

  private
    def set_day
      @day = Day.find(params[:id])
    end

    def day_params
      params.require(:day).permit(:day)
    end
end
