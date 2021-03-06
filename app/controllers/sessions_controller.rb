class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user && @user.authenticate(params[:session][:password])
      log_in @user
      params[:session][:remember_me] == '1' ? remember(@user) : forget(@user)
      unless @user.admin?
        redirect_to @user, notice: I18n.t('label.login_success')
      else
        redirect_to admin_root_url, notice: I18n.t('label.admin_login_success')
      end
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url, alert: I18n.t('label.logout_success')
  end
end
