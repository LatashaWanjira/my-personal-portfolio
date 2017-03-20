class AdminUserController < ApplicationController
  # layout 'admin'

  # before_filter :confirm_logged_on

  def index
    list
    render :list
  end

  def list
    # @admin_users = AdminUser.sorted
  end

  def new
    @admin_user = AdminUser.new
  end

  def create
    @admin_user = AdminUser.new(params[:admin_user])
    if @admin_user.save
      flash[:notice] = "Admin successfully added"
      redirect_to list_path
    else
      flash[:alert] = "The admin was not added. Try again!"
      render :new
    end
  end

  def edit
    @admin_user = AdminUser.find(params[:id])
  end

  def update
    @admin_user = AdminUser.find(params[:id])
    if @admin_user.update
      flash[:notice] = "Admin successfully editted"
      redirect_to list_path
    else
      flash[:alert] = "The admin was not editted. Try again!"
      render :edit
    end
  end

  def delete
    @admin_user = AdminUser.find(params[:id])
  end

  def destroy
    @admin_user = AdminUser.find(params[:id])
    @admin_user.destroy
    flash[:notice] = "Admin successfully deleted!"
    redirect_to list_path
  end
end
