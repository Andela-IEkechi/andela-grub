class MenuContentsController < ApplicationController
  before_action :set_menu_content, only: [:edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :is_admin?, only: [:create, :edit, :update, :destroy]

  def is_admin?
    if current_user.admin?
      true
    else
      redirect_to root_path
    end
  end

  respond_to :html

  def index
    @menu_contents = MenuContent.where(day_id: Time.now.wday)
    respond_with(@menu_contents)
  end

  def new
    @menu_content = MenuContent.new
    respond_with(@menu_content)
  end

  def edit
  end

  def create
    @user_admin = current_user.admin?
    if @user_admin
      @menu_content = MenuContent.new(menu_content_params)
      respond_to do |format|
        if @menu_content.save
          format.html do
            redirect_to menu_contents_path,
                        notice: 'Menu Content was successfully created.'
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
        if @menu_content.update(menu_content_params)
          format.html do
            redirect_to menu_contents_path,
                        notice: 'Menu Content was successfully updated.'
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
      @menu_content.destroy
      respond_with(@menu_content)
    else
      respond_to do |format|
        format.html { render file: "#{Rails.root}/public/401.html", status: 401, layout: false }
      end
    end
  end

  private
    def set_menu_content
      @menu_content = MenuContent.find(params[:id])
    end

    def menu_content_params
      params.require(:menu_content).permit(:day_id, :food_id, :occasion, order_attributes: [
                                                      { user_id: :user_id, menu_content_id: :menu_content_id },
                                                  { user_id: :user_id, menu_content_id: :menu_content_id },
                                                  { user_id: :user_id, menu_content_id: :menu_content_id }])
    end
end
