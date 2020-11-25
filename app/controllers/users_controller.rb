class UsersController < ApplicationController
  def index
    @users = User.order(:id)
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  private

  def user_params
    params.require(:user).permit(:department_id, :name, :employee_id, :email, :password, :password_confirmation, :avatar)
  end

end
