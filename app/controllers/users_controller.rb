class UsersController < ApplicationController
  before_action :logged_in_user, except: [:new, :create]
  before_action :correct_user,   only: [:edit, :update]
  before_action :admin_user,     only: :destroy

  def new
    @user = User.new
  end

  def create
    byebug
    @user = User.new(user_params)
    if @user.save
      log_in @user
      redirect_to @user, notice: I18n.t('label.signup_success')
    else
      render 'new'
    end
  end

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
      redirect_to @user, notice: I18n.t('label.profile_update')
    else
      render 'edit'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to users_url, alert: I18n.t('label.destroy_success', model: User.model_name.human)
  end
  

  private

  def user_params
    params.require(:user).permit(:department_id, :name, :employee_id, :email, :password, :password_confirmation, :avatar)
  end
end
